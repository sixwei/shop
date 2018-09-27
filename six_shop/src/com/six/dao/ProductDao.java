package com.six.dao;

import java.util.List;

import com.six.entity.Product;



public interface ProductDao {

	/*
	 * 添加
	 */
	void add(Product pro);
	/*
	 * 删除
	 */
	void delete(Integer id);
	/*
	 * 更新
	 */
	void update(Product cate, int id);
	/*
	 * 通过id查找
	 */
/*	public Category findById(Integer id) {
		
	};*/
	Product findById(Integer id);
	List<Product> findAll();
	
	/**
	 * �������²�Ʒ�Ĳ�ѯ
	 */
	
    List<Product> lastProduct(int croNum,int pageSize);
    
    //�Ƽ���Ʒ�Ľӿ�
    
    Product recommendProduct(int id);
	

}
