package com.hwrky.shop.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.hwrky.shop.entity.User;

public interface Usermapper {
	Integer SelectUser(@Param("user") User user);
	Integer insertOne(@Param("user") User user);
	List<User> selectAll();
	boolean deleteUser(int user_id);
	Integer selectTotal(@Param("user") User user);
}
