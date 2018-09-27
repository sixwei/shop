package com.six.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.six.dao.UserDao;
import com.six.entity.User;
import com.six.utils.DBUtil;



public class UserDaoImplement implements UserDao {

	@Override
	public List<User> findAll() {
		List<User> users=new ArrayList<>();
		Connection coon=null;
		PreparedStatement prep = null;
		ResultSet res=null;
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
	
			String sql="select* from t_user ";
			prep=DBUtil.getPreparedStatement(coon, sql);
			res=DBUtil.getResultSet(prep);
			while(res.next()) {
				users.add(new User(res.getInt("id"),res.getString("username"),res.getString("password"),res.getString("phone"),res.getString("addr"),res.getTimestamp("rdate")));	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, coon);	
		}
		return users;
	}

	@Override
	public void add(User user) {
		Connection coon=null;
		PreparedStatement prep=null;
		String str="insert into t_user values(null,?,?,?,?,null) ";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(coon, str);
			prep.setString(1, user.getUsername());
			prep.setString(2, user.getPassword());
			prep.setString(3, user.getPhone());
			prep.setString(4, user.getAddr());
			prep.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep,coon);
		}
	}

	@Override
	public void delet(Integer id) {
		Connection conn=null;
		PreparedStatement prep=null;
		String str="delete from t_user where id=?";
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
	public void update(User user) {
		Connection conn=null;
		PreparedStatement prep=null;
		String str="update t_user set username=?,password=?,phone=?,addr=? where id=?";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setInt(5,user.getId());
			prep.setString(1, user.getUsername());
			prep.setString(2, user.getPassword());
			prep.setString(3, user.getPhone());
			prep.setString(4, user.getAddr());
			prep.executeUpdate();
			System.out.println(user);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep, conn);
		}
	}

	@Override
	public User findById(Integer id) {
		User user=null;
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		String str="select* from t_user where id=?";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setInt(1, id);
			res=DBUtil.getResultSet(prep);
			if(res.next())
				user=new User(id,res.getString("username"),res.getString("password"), res.getString("phone"), res.getString("addr"),res.getTimestamp("rdate"));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, conn);
		}
		return user;
		
	}

	@Override
	public User findByName(String name) {
		
		User user = null;
		
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet res = null;
		String sql = "select * from t_user where username=?";
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn = DBUtil.getConnection();
			prep = DBUtil.getPreparedStatement(conn, sql);
			prep.setString(1, name);
			res =  DBUtil.getResultSet(prep);
			
			if(res.next()) {
				user=new User(res.getInt("id"),res.getString("username"),res.getString("password"), res.getString("phone"), res.getString("addr"),res.getTimestamp("rdate"));
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
		
	}
	
	
	



}
