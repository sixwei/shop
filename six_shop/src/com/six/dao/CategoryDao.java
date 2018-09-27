package com.six.dao;

import java.util.List;

import com.six.entity.Category;




public interface CategoryDao {
	/*
	 *查找
	 */
	List<Category> findAll(List<Category> cates,int pid);
	/*
	 * 添加
	 */
	void add(String name,String desc);
	/*
	 * 删除
	 */
	void delet(Integer id);
	/*
	 * 更新
	 */
	void update(Category cate, int id);
	/*
	 * 通过id查找
	 */
	public Category findById(Integer id);



	
}
