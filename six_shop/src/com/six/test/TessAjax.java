package com.six.test;

import com.six.dao.impl.UserDaoImplement;
import com.six.entity.User;

public class TessAjax {

	
	public static void main(String[] args) {
		
		
		UserDaoImplement userDao = new UserDaoImplement();
		User user = userDao.findByName("admin");
		
		System.out.println(user);
	}
}
