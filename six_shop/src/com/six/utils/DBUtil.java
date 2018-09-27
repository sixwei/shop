package com.six.utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.mysql.jdbc.Statement;



public class DBUtil {
	public static Properties prop=new Properties();

	static {
		try {
			prop.load(DBUtil.class.getClassLoader().getResourceAsStream("db.properties"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static final String DRIVER_NAME=prop.getProperty("driver_name");
	public static final String PROTOCOL=prop.getProperty("protocol");
	public static final String HOST_IP=prop.getProperty("host_ip");
	public static final String PORT=prop.getProperty("port");
	public static final String DB_NAME=prop.getProperty("db_name");
	public static final String useSSL=prop.getProperty("useSSL");
	public static final String DB_USERNAME=prop.getProperty("db_username");
	public static final String DB_PASSWORD=prop.getProperty("db_password");
	public static  Connection getConnection(){
		Connection coon=null;
		try {
			coon=DriverManager.getConnection(DBUtil.PROTOCOL+"://"+DBUtil.HOST_IP+DBUtil.PORT+"/"+DBUtil.DB_NAME+"?"+DBUtil.useSSL,DBUtil.DB_USERNAME,DBUtil.DB_PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return coon;
	}
	public static PreparedStatement getPreparedStatement(Connection coon,String str) {
		PreparedStatement prep=null;
		try {
			prep=coon.prepareStatement(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prep;
	}
	
	public static PreparedStatement getPreparedStatement(Connection coon,String str,boolean yess) {
		PreparedStatement prep=null;
		try {
			
			prep=coon.prepareStatement(str,Statement.RETURN_GENERATED_KEYS );
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prep;
	}
	
	public static ResultSet getResultSet(PreparedStatement prep) {
		ResultSet res=null;
		try {
			res=prep.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public static void Close(Connection coon) {

			try {
				if(coon!=null)
					coon.close();
				coon=null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
	public static void Close(PreparedStatement prep) {
			try {
				if(prep!=null)
					prep.close();
				prep=null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	public static void Close(ResultSet res) {
			try {
				if(res!=null)
					res.close();
				res=null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	public static void Close(ResultSet res,PreparedStatement prep,Connection coon) {
			Close(res);
			Close(prep,coon);
		}
	public static void Close(PreparedStatement prep,Connection coon) {
		Close(prep);
		Close(coon);
	}
	
	public static void rollBack(Connection conn) {
		try {
			conn.rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void autoCommit(Connection conn) {
		try {
			conn.setAutoCommit(true);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
}
