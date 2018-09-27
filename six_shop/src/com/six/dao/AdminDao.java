package com.six.dao;

import java.util.List;

import com.six.entity.Admin;



public interface AdminDao {
	/*
	 *查找
	 */
	List<Admin> findAll();
	/*
	 * 添加
	 */
	void add(Admin admin);
	/*
	 * 删除
	 */
	void delet(Integer id);
	/*
	 * 更新
	 */
	void update(Admin admin);
	/*
	 * 通过id查找
	 */
	public Admin findById(Integer id); 
	
	
	public Admin checkAdmin(String aname);
}
