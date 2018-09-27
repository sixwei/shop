package com.six.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpSession;

import com.six.dao.OrderDao;
import com.six.entity.Cart;
import com.six.entity.CartItem;
import com.six.entity.Category;
import com.six.entity.SalesOrder;
import com.six.utils.DBUtil;

public class OrderDaoImpl implements OrderDao {

	
	@Override
	public List<SalesOrder> find() {

		Connection conn=null;
		PreparedStatement prep=null;
		List<Category> categorys=new ArrayList<>();
		ResultSet res=null;
		String str="SELECT u.addr,u.username,u.phone,p.`name`,p.normalprice,i.pcount FROM t_salesorder o JOIN t_saleitem i ON o.id=i.orderid join t_user u on o.userid=u.id JOIN t_product p on i.productid=p.id";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			res=DBUtil.getResultSet(prep);
			while(res.next()) {
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, conn);
		}
		return null;
		

	}
	
	@Override
	public void addItem(CartItem item,int oid) {
		Connection conn=null;
		PreparedStatement prep=null;
		String str="insert into t_saleitem values(null,?,?,?,?)";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			
			prep.setInt(1, item.getP().getId());
			
			prep.setDouble(2,item.getP().getNormalPrice());
			
			prep.setInt(3,item.getQty());
			
			prep.setInt(4,oid);

			prep.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep, conn);
		}
		
	}

	

	@Override
	public int addOrder(SalesOrder order) {
		
		Connection conn= null;
		PreparedStatement prep= null;
		String sql="insert into t_saleaorder value(null,?,?,?,?)";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, sql);
			
			prep.setInt(1, order.getUser().getId());
			prep.setString(2, order.getUser().getAddr());
			
			SimpleDateFormat daa = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			Date date = new Date();
			
			prep.setString(3,daa.format(date));
			
			prep.setInt(4, 0);
			
			prep.executeUpdate();
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return 2;
		
	}

	@Override
	public void add(CartItem item,SalesOrder order) {
		
		Connection conn= null;
		PreparedStatement prep= null;
		String sqlone="insert into t_saleaorder value(?,?,?,?,?)";
		String sqltwo="insert into t_saleitem values(null,?,?,?,?)";
		
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			
			conn.setAutoCommit(false);
			prep=DBUtil.getPreparedStatement(conn, sqlone);
			
			
			int random = (int)(Math.random() * 1000000);
			
			prep.setInt(1, random);
			prep.setInt(2, order.getUser().getId());
			prep.setString(3, order.getUser().getAddr());
			
			SimpleDateFormat daa = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			Date date = new Date();
			
			prep.setString(4,daa.format(date));
			
			prep.setInt(5, 0);
			
			prep.executeUpdate();
			
			
			
            prep.setInt(1, item.getP().getId());
			
			prep.setDouble(2,item.getP().getNormalPrice());
			
			prep.setInt(3,item.getQty());
			
			prep.setInt(4,random);

			prep.executeUpdate();
	
			
			conn.commit();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}

	@Override
	public void add(SalesOrder order) {
		
		
		Connection conn= null;
		PreparedStatement prep1=null;
		PreparedStatement prep2=null;

		String sqlorder= "insert into t_salesorder value(null,?,?,now(),?)";
		
		String sqlitem = "insert into t_saleitem value(null,?,?,?,?)";
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			
			conn.setAutoCommit(false);
			
			prep1=DBUtil.getPreparedStatement(conn, sqlorder,true);
			
			
			prep1.setInt(1,order.getUser().getId());
			
			prep1.setString(2, order.getUser().getAddr());
			
			prep1.setInt(3, order.getStatus());
			
		    prep1.execute();
			
			ResultSet resKey = prep1.getGeneratedKeys();
			resKey.next();
			int key = resKey.getInt(1);
			
			//对于salesitem进行数据插入
			
			prep2=DBUtil.getPreparedStatement(conn, sqlitem);			
			List<CartItem> items = order.getCart().getItems();
			for(int i=0;i<items.size();++i) { 
				
				CartItem item=items.get(i);
				prep2.setInt(1,item.getP().getId());
				prep2.setDouble(2, item.getP().getNormalPrice());
				prep2.setInt(3, item.getQty());
				prep2.setInt(4,key);				
				prep2.addBatch();
				
			}
			prep2.executeBatch();
			
			conn.commit();
		}catch (Exception e) {
			// TODO Auto-generated catch block
		DBUtil.rollBack(conn);
			e.printStackTrace();
		}finally{
			DBUtil.autoCommit(conn);
		}
	}

	
	

}
