package com.hwrky.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwrky.shop.dao.Adminmapper;
import com.hwrky.shop.entity.Admin;
import com.hwrky.shop.service.AdminService;

@Service("adminservice")
public class AdminServiceImpl implements AdminService {
@Autowired
	private Adminmapper adminmapper;
@Override
public Integer SelectAdmin(Admin admin) {
	
	return adminmapper.SelectAdmin(admin);
}
}
