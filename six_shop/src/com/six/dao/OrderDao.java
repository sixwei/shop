package com.six.dao;

import java.util.List;

import com.six.entity.CartItem;
import com.six.entity.SalesOrder;

public interface OrderDao {
	
	
	
	//点击付款把购物车中的数据存储到salesItem中（在这里共同使用的是CartItem）
	
	/*
	 * 
	 * 先添加到订单在添加购物项（把订单的id拿出来作为salesitem的外键
	 * 添加把购物车中的数据添加到购物车中
	 */
	
	
	public int  addOrder(SalesOrder order);
	public  void  addItem(CartItem item,int oid); 
	
	
	public void add(CartItem item,SalesOrder order);
	
	
	
	/*
	 * 查询所有的订单
	 */
	
	public  List<SalesOrder> find();
	
	
	/*
	 * 点击付款，把购物车中的数据 存放到salesitem中
	 * 
	 */
	
	
	public void add(SalesOrder order);
	


}
