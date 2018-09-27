package com.six.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.six.dao.ProductDao;
import com.six.entity.Category;
import com.six.entity.Product;
import com.six.utils.DBUtil;




public class ProductDaoImplement implements ProductDao {

	@Override
	public List<Product> findAll() {
		List<Product> products=new ArrayList<>();
		Connection conn=null;
		PreparedStatement prep=null;
		PreparedStatement prep2=null;
		ResultSet res=null;
		ResultSet res1=null;
		String sql="select* from t_product group by categoryid";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?useSLL=true&characterEncoding=utf-8","root","1071562691");
			prep=conn.prepareStatement(sql);
			res=prep.executeQuery();
			System.out.println(res);
			while (res.next()) {
				String sq="select *from t_product where categoryid=?";
				prep2=DBUtil.getPreparedStatement(conn, sq);
				prep2.setInt(1, res.getInt("categoryid"));
				res1=prep2.executeQuery();
				while(res1.next()) {
					products.add(new Product(res1.getInt("id"),res1.getString("name"),res.getString("desc"),res.getDouble("normalprice"),res.getDouble("memberprice"),res.getString("pdate"),res.getInt("categoryid")));
				}
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				res1.close();
				res.close();
				prep2.close();
				prep.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return products;
	}
	@Override
	public void delete(Integer id) {
		Connection conn=null;
		PreparedStatement prep=null;
		String sql="delete from t_product where id=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setInt(1, id);
			prep.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void update(Product cate, int id) {
		Connection conn=null;
		PreparedStatement prep=null;
		String sql="update t_product set name=?,desc=?,normalprice=? where id=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setString(1, cate.getName());
			prep.setString(2, cate.getDescr());
			prep.setDouble(3, cate.getNormalPrice());
			prep.setInt(4, cate.getId());
			prep.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				prep.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		

	}

/*	@Override
	public void add(Product pro) {
		Connection conn=null;
		PreparedStatement prep=null;
		String str="insert into t_product values(null,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setString(6, pro.getName());

			prep.setString(1, pro.getDescr());

			prep.setDouble(2, pro.getNormalPrice());

			prep.setDouble(3,pro.getMemberPrice());

			prep.setInt(5, pro.getCateGoryid());

//			SimpleDateFormat daa=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			prep.setDate(4, new java.sql.Date(pro.getPdate().getTime()));

			prep.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				prep.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}*/
	@Override
	public Product findById(Integer id) {
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		Product pro=null;
		String sql="select * from t_product where id=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setInt(1,id);
			res=prep.executeQuery();
			res.next();
			pro=new Product(res.getInt("id"),res.getString("name"),res.getString("desc"),res.getDouble("normalprice"),res.getDouble("memberprice"),res.getString("pdate"),res.getInt("categoryid"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				res.close();
				prep.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return pro;
	}

	@Override
	public void add(Product pro) {
		Connection conn=null;
		PreparedStatement prep=null;
		String str="insert into t_product values(null,?,?,?,?,?,?)";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setString(6, pro.getName());

			prep.setString(1, pro.getDescr());

			prep.setDouble(2, pro.getNormalPrice());

			prep.setDouble(3,pro.getNormalPrice()*0.8);

			prep.setInt(5, pro.getCateGoryid());

			SimpleDateFormat daa=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			Date date=new Date();
			
//			prep.setDate(4, new java.sql.Date(pro.getPdate().getTime()));
			prep.setString(4, daa.format(date));

			prep.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep, conn);
		}
	}
	public List<Product> search(String name,String data,String enddata){
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		List<Product> products=new ArrayList<>();
		String str="select* from t_product where 1=1";
		if(name!="") {
			str+=" and name='"+name+"'";
		}
		if(data!=""&&enddata!="") {
			str+=" and pdate between '"+data+"' and '"+enddata+"' ";
		}
		if(data!=""&&enddata=="") {
			str+=" and padte >= '"+data+"'";
		}
		if(data==""&&enddata!="") {
			str+=" and padte <= '"+enddata+"'";
		}
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			res=prep.executeQuery();
			while (res.next()) {
				products.add(new Product(res.getInt("id"),res.getString("name"),res.getString("desc"),res.getDouble("normalprice"),res.getDouble("memberprice"),res.getString("pdate"),res.getInt("categoryid")));

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;

	}
	
	
	/**
	 * 最新产品查询
	 * 多表进行关联(product,和category)
	 */
	@Override
	public List<Product> lastProduct(int rowNum, int pageSize) {
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		List<Product> products=new ArrayList<>();
		String str="SELECT * from t_product ORDER BY pdate desc LIMIT "+(rowNum-1)*pageSize+","+pageSize+";";
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			res=prep.executeQuery();
			while (res.next()) {
				products.add(new Product(res.getInt("id"),res.getString("name"),res.getString("desc"),res.getDouble("normalprice"),res.getDouble("memberprice"),res.getString("pdate"),res.getInt("categoryid")));

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;

	}
	
	/**
	 * 关于前台页面中产品推荐用到了级联查询
	 */
	@Override
	public Product recommendProduct(int id) {
		
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		Product product = new Product();
		String sql="SELECT p.id,p.name,c.name,p.normalprice FROM t_product AS p,t_category AS c WHERE p.categoryid=c.id and p.id=?";
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=conn.prepareStatement(sql);
			prep.setInt(1,id);
			res = DBUtil.getResultSet(prep);
			if (res.next()) {
				
				
				
				product.setId(res.getInt("p.id"));
				product.setName(res.getString("p.name"));
				product.setNormalPrice(res.getDouble("p.normalprice"));
				
				Category category = new Category();
				category.setName(res.getString("c.name"));
				product.setCategory1(category);
				
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}

}
