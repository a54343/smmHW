package com.hwrky.shop.service;

import java.util.List;


import com.hwrky.shop.entity.User;

public interface UserService {
	Integer SelectUser(User user);

	List<User> selectAll();
	boolean deleteUser(int user_id);
	boolean add(User user);
	
	Integer getTotal(User user);


}
