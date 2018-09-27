package com.six.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.six.dao.FireproDao;
import com.six.entity.Firepro;
import com.six.entity.Product;
import com.six.utils.DBUtil;

public class FireproDaoImpl implements FireproDao {

	@Override
	public List<Firepro> findAll() {
		// TODO Auto-generated method stub
		List<Firepro> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement prep = null;
		
		String sql = "select f.id,p.name ,f.qty  from t_firepro f join t_product p on f.pid = p.id order by qty desc";
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn = DBUtil.getConnection();
			
			prep =DBUtil.getPreparedStatement(conn, sql);
			
			ResultSet res = prep.executeQuery();
			
			while(res.next()) {
				Firepro pro = new Firepro();
				Product p = new Product();
				p.setName(res.getString(2));
				pro.setId(res.getInt(1));
				pro.setP(p);
				pro.setQty(res.getInt(3));
				
				list.add(pro);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}

}
