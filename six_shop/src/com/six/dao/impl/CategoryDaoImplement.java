package com.six.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.six.dao.CategoryDao;
import com.six.entity.Category;
import com.six.utils.DBUtil;



public class CategoryDaoImplement implements CategoryDao {
	public List<Category> findall(){
		Connection conn=null;
		PreparedStatement prep=null;
		List<Category> categorys=new ArrayList<>();
		ResultSet res=null;
		String str="select * from t_category where grade=3";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			res=DBUtil.getResultSet(prep);
			while(res.next()) {
				Category cate=new Category(res.getInt("id"),res.getString("name"),res.getString("descr"), res.getInt("pid"), res.getInt("leaf")==1?true:false,res.getInt("grade"));
				categorys.add(cate);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, conn);
		}
		return categorys;
	}

	@Override
	public List<Category> findAll(List<Category> cates,int pid) {

		Connection coon=null;
		PreparedStatement prep = null;
		ResultSet res=null;
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
	
			String sql="select* from t_category where pid="+pid;
			prep=DBUtil.getPreparedStatement(coon, sql);
			res=DBUtil.getResultSet(prep);
			while(res.next()) {
				Category cate=new Category(res.getInt("id"),res.getString("name"),res.getString("descr"),res.getInt("pid"),res.getBoolean("leaf"),res.getInt("grade"));
				cates.add(cate);
				if(!cate.Leaf)
					findAll(cates,res.getInt("id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, coon);	
		}
		return cates;
	}
	/*
	 * 璁剧疆鏍硅妭鐐�
	 */
	@Override
	public void add(String name,String desc) {
		Category cate=new Category(name,desc);
		cate.setPid(0);
		cate.setLeaf(true);
		cate.setGrade(1);
		add(cate);
	}
	/*
	 * 娣诲姞瀛愮被鍒�
	 */
	public void add(String name,String desc,int pid) {
		Category cate=new Category(name,desc,pid);
		cate.setPid(pid);
		cate.setLeaf(true);
		Connection coon=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		String str="update t_category set leaf=0 where id="+pid;
		String str1="select * from t_category where id="+pid;
		try {
			
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
			coon.setAutoCommit(false);
			prep=DBUtil.getPreparedStatement(coon, str1);
			res=DBUtil.getResultSet(prep);
			int grade = 0;
			if(res.next())
			 grade=res.getInt("grade");
			cate.setGrade(grade+1);
			prep=DBUtil.getPreparedStatement(coon, str);
			prep.executeUpdate();
			coon.commit();
			add(cate);
		} catch (Exception e) {
			try {
				coon.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			DBUtil.Close(res, prep, coon);
		}
	}
	private void add(Category cate) {
		Connection coon=null;
		PreparedStatement prep=null;
		String str="insert into t_category values(null,?,?,?,?,?) ";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(coon, str);
			prep.setString(1, cate.getName());
			prep.setString(2, cate.getDescr());
			prep.setInt(3, cate.getPid());
			prep.setInt(4, cate.isLeaf()?1:0);
			prep.setInt(5,cate.getGrade());
			prep.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep,coon);
		}

	}
	/*
	 * 鍒犻櫎鍙跺瓙鑺傜偣
	 * @see mysql_08_16.dao.CategoryDao#delet(java.lang.Integer)
	 */
	@SuppressWarnings("resource")
	@Override
	public void delet(Integer id) {
		Connection coon=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		String str="delete from t_category where id="+id;
		String str1="select* from t_category where id="+id;
		String str2="update t_category set leaf=1 where id=?";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			coon=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(coon, str1);
			res=DBUtil.getResultSet(prep);
			while(res.next()) {
					prep=DBUtil.getPreparedStatement(coon, str);
					prep.executeUpdate();
				 if (res.getInt("leaf")==0) 
					{ds(res.getInt("id"));
					prep=DBUtil.getPreparedStatement(coon, str2);
					prep.setInt(1, res.getInt("pid"));
				 prep.executeUpdate();}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep, coon);
		}
	}
	/*
	 * 鍒犻櫎鍙跺瓙鑺傜偣
	 * @see mysql_08_16.dao.CategoryDao#update(mysql_08_16.entity.Category)
	 */
	private void ds(int pid) {
		Connection conn=null;
		PreparedStatement perp=null;
		ResultSet res=null;
		String str="delete from t_category where pid="+pid;
		String str1="select* from t_category where pid="+pid;
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			perp=DBUtil.getPreparedStatement(conn, str1);
			res=DBUtil.getResultSet(perp);
			while(res.next()) {
					perp=DBUtil.getPreparedStatement(conn, str);
//					perp.executeUpdate();
				 if (res.getInt("leaf")!=1) {
					 ds(res.getInt("id"));
				 }
				 perp.executeUpdate();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, perp, conn);
		}
	}

	@Override
	public void update(Category cate,int id) {
		Connection conn=null;
		PreparedStatement prep=null;
		
		String str="update t_category set name=?,descr=? where id="+cate.getId();
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setString(1, cate.getName());
			prep.setString(2, cate.getDescr());
			prep.executeUpdate();
			System.out.println(cate);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(prep, conn);
		}
	}

	@Override
	public Category findById(Integer id) {
		Category cate=null;
		Connection conn=null;
		PreparedStatement prep=null;
		ResultSet res=null;
		String str="select* from t_category where id=?";
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn=DBUtil.getConnection();
			prep=DBUtil.getPreparedStatement(conn, str);
			prep.setInt(1, id);
			res=DBUtil.getResultSet(prep);
			if(res.next())
				cate=new Category(id,res.getString("name"),res.getString("descr"), res.getInt("pid"), res.getInt("leaf")==1?true:false,res.getInt("grade"));
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBUtil.Close(res, prep, conn);
		}
		return cate;
	}

}
