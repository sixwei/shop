package com.six.test;



import java.util.ArrayList;
import java.util.List;

import com.six.dao.impl.OrderDaoImpl;
import com.six.entity.Cart;
import com.six.entity.CartItem;
import com.six.entity.Product;
import com.six.entity.SalesOrder;
import com.six.entity.User;

public class TessOrderDao {

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Cart cart = new Cart();
		CartItem item = new CartItem();
		
		Product p1 = new Product();
		p1.setId(12);
		p1.setNormalPrice(233);
	
		Product p2 = new Product();
		p2.setId(132);
		p2.setNormalPrice(233);
		
		Product p3 = new Product();
		p3.setId(122);
		p3.setNormalPrice(233);
		
		List<CartItem> items= new ArrayList<>();
		items.add(item);
		
		
		for(int i=0;i<3;++i) {
			item.setP(p1);
			item.setQty(10);
		}
		
		
		

		User user = new User();
		user.setAddr("¶«Èí202");
		user.setId(2);

		SalesOrder order= new SalesOrder();
		order.setCart(cart);
		order.setUser(user);
		order.setStatus(0);
		
		OrderDaoImpl orderdao = new OrderDaoImpl();
		
		System.out.println(order);
		
		orderdao.add(order);
		
	}
}
