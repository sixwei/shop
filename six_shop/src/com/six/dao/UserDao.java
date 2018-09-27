package com.six.dao;

import java.util.List;

import com.six.entity.User;





public interface UserDao {
	/*
	 * 查找
	 */
	List<User> findAll();
	/*
	 * 添加
	 */
	void add(User user);
	/*
	 * 删除
	 */
	void delet(Integer id);
	/*
	 * 更新
	 */
	void update(User user);
	/*
	 * 通过id查找
	 */
	public User findById(Integer id);
	
	
	public User findByName(String name);
	
	
	
}
