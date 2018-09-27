package com.six.test;

import java.util.List;

import com.six.dao.impl.ProductDaoImplement;
import com.six.entity.Product;

public class daoProductTest {
	
	public static void main(String[] args) {
		ProductDaoImplement daoPro = new ProductDaoImplement();
		
		List<Product> lastProducts = daoPro.lastProduct(1, 4);
		System.out.println(lastProducts);
	}

}
