package com.six.dao;

import java.util.List;

import com.six.entity.Product;



public interface ProductDao {

	/*
	 * 娣诲姞
	 */
	void add(Product pro);
	/*
	 * 鍒犻櫎
	 */
	void delete(Integer id);
	/*
	 * 鏇存柊
	 */
	void update(Product cate, int id);
	/*
	 * 閫氳繃id鏌ユ壘
	 */
/*	public Category findById(Integer id) {
		
	};*/
	Product findById(Integer id);
	List<Product> findAll();
	
	/**
	 * 对于最新产品的查询
	 */
	
    List<Product> lastProduct(int croNum,int pageSize);
    
    //推荐商品的接口
    
    Product recommendProduct(int id);
	

}
