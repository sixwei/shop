package com.neuedu.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.neuedu.entity.Admin;
import com.neuedu.util.DBUtil;







public class AdminDaoImplement implements AdminDao {

	@Override
	public List<Admin> findAll() {
		List<Admin> admins=new ArrayList<>();
		Connection coon=null;
		PreparedStatement prep = null;
		ResultSet res=null;
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
	
			String sql="select* from t_admin ";
			prep=DBUtil.getPreparedStatement(coon, sql);
			res=DBUtil.getResultSet(prep);
			while(res.next()) {
				admins.add(new Admin(res.getInt("id"),res.getString("aname"),res.getString("apwd")));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, coon);	
		}
		return admins;
	}

	
	@Override
	public void add(Admin admin) {
		// TODO Auto-generated method stub
		
	}
	/*
	 * 添加
	 * @see mysql_08_16.AdminDao#add(mysql_08_16.Admin)
	 */
	public void add(String aname,String pswd) {
		Connection coon=null;
		PreparedStatement prep=null;
		String str="insert into t_admin values(null,?,?) ";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(coon, str);
			prep.setString(1, aname);
			prep.setString(2, pswd);
			prep.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep,coon);
		}
	}

	@Override
	/*
	 * 删除
	 * @see mysql_08_16.AdminDao#delet(java.lang.Integer)
	 */
	public void delet(Integer id) {
		Connection conn=null;
		PreparedStatement prep=null;
		String str="delete from t_admin where id=?";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setInt(1, id);
			prep.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep, conn);
		}
		
	}

	@Override
	public void update(Admin admin) {
		Connection conn=null;
		PreparedStatement prep=null;
		String str="update t_admin set aneme=?,apwd=? where id=?";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setInt(3,admin.getId());
			prep.setString(1, admin.getAname());
			prep.setString(2, admin.getApwd());
			System.out.println(11);
			System.out.println(admin);
			prep.executeUpdate();
			System.out.println(admin);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep, conn);
		}
	}
	@Override
	public Admin findById(Integer id) {
		Admin admin=null;
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		String str="select* from t_admin where id=?";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setInt(1, id);
			res=DBUtil.getResultSet(prep);
			if(res.next())
				admin=new Admin(id,res.getString("aneme"),res.getString("apwd"));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, conn);
		}
		return admin;
		
	}


	@Override
	public Admin checkAdmin(String aname) {
		
		Admin admin=null;
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		String sql = "select * from t_admin where aname=?";
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, sql);
			prep.setString(1,aname);
			res=DBUtil.getResultSet(prep);
			if(res.next())
				admin=new Admin(res.getInt("id"),res.getString("aname"),res.getString("apwd"));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, conn);
		}
		return admin;
	}



}
