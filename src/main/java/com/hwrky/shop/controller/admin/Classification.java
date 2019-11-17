package com.hwrky.shop.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Classification {
	 @RequestMapping(value = "category", method = RequestMethod.GET)
	    public String goToPage(HttpSession session, Map<String, Object> map) {

	        return "admin/classification";
		
	    }
}
