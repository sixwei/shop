package com.neuedu.mybatis.mapper;

import org.apache.ibatis.annotations.Select;

import com.neuedu.mybatis.pojo.User;

public interface UserMapper {
	
	
	@Select("select * from t_user where id = #{id}")
	public User findByid(Integer id);

}
