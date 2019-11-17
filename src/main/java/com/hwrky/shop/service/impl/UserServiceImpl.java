package com.hwrky.shop.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwrky.shop.dao.Usermapper;
import com.hwrky.shop.entity.User;
import com.hwrky.shop.service.UserService;


@Service("userservice")
public class UserServiceImpl implements UserService {
@Autowired
	private Usermapper usermapper;

@Override
public Integer SelectUser(User user) {
	
	return usermapper.SelectUser(user);
}

@Override
public List<User> selectAll() {
	
	return usermapper.selectAll();
}

@Override
public boolean deleteUser(int user_id) {
	
	return usermapper.deleteUser(user_id);
}

@Override
public boolean add(User user) {
	
	 return usermapper.insertOne(user)>0;
}
@Override
public Integer getTotal(User user) {
    return usermapper.selectTotal(user);
}
}
