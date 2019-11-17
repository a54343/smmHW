package com.hwrky.shop.controller.admin;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hwrky.shop.entity.Admin;

import com.hwrky.shop.service.AdminService;


@Controller
public class adminlogin {
	@Resource(name="adminservice")
	private AdminService adminservice;
	@RequestMapping("/aloginaction")
	@ResponseBody
	public boolean login(String username,String password){
		Admin admin =new Admin();
		admin.setAdmin_name(username);
		admin.setAdmin_pwd(password);
		int count=adminservice.SelectAdmin(admin);
		System.out.println("有"+count+"条数据");
		if(count==1) {
			return true;
		}else {
			return false;
		}
	}
 
	  @RequestMapping(value = "adminlogin", method = RequestMethod.GET)
	    public String goToPage(HttpSession session, Map<String, Object> map) {

	        return "admin/login";
}}