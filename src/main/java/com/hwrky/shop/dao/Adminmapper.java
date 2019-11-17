package com.hwrky.shop.dao;

import org.apache.ibatis.annotations.Param;

import com.hwrky.shop.entity.Admin;

public interface Adminmapper {
	Integer SelectAdmin(@Param("admin") Admin admin);
}
