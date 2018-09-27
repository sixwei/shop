package com.six.dao;

import com.six.dao.impl.ProductDaoImplement;

public class test {
public static void main(String[] args) {
	ProductDaoImplement pro=new ProductDaoImplement();
	System.out.println(pro.search(null, "2018-09-01", "2018-09-05"));
	
}
}
