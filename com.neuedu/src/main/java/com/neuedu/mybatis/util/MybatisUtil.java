package com.neuedu.mybatis.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {

	
	public static SqlSession getSqlSession(String path) {
		InputStream input = null;
		SqlSessionFactory sqlSessionFactory =null;
		
		try {
			input = Resources.getResourceAsStream(path);
			sqlSessionFactory= new SqlSessionFactoryBuilder().build(input);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlSessionFactory.openSession();
		
	}
}
