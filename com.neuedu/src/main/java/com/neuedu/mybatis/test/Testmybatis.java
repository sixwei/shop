package com.neuedu.mybatis.test;



import java.util.ArrayList;

import org.apache.ibatis.cache.impl.PerpetualCache;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.neuedu.mybatis.pojo.User;
import com.neuedu.mybatis.util.MybatisUtil;

public class Testmybatis {
	
	public static void main(String[] args) {
		
		SqlSession sqlsession = MybatisUtil.getSqlSession("mybatis_config.xml");
		
		//User user = sqlsession.selectOne("UserMapper.selectUser",2);
		//����UserMapper.class ����ӳ��
		
//		UserMapper usermapper =sqlsession.getMapper(UserMapper.class);
//		
//		User user = usermapper.findByid(2);
//		
//		System.out.println(user);
//		
//		System.out.println("------------ͨ�������ļ�������ɾ��------------------");
//		
//		//����
//		
//		User user = new User("ibatis","123456","45612","Neuedu");
//		sqlsession.insert("UserMapper.insertUser", user);
//		sqlsession.commit();
//		User user2 = new User(1,"��־ΰ");
//		sqlsession.update("UserMapper.updateUser", user2);
//		sqlsession.commit();
//		
//		
//		
//		sqlsession.delete("UserMapper.deleteUser",5);
//		sqlsession.commit();
		
		
		Object selectOne = sqlsession.selectOne("ClassesMapper.findByTeacherName", "����");
		
		sqlsession.commit();
		
		
		System.out.println(selectOne);
		
		ApplicationContext application = new ClassPathXmlApplicationContext("applicationcontext.xml");
		
		
		BeanFactory bean;
		
		
		
		
		
		
		
	
		
	}
	
	

}