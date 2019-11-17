package com.hwrky.shop.controller.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


//import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.hwrky.shop.entity.User;
import com.hwrky.shop.service.UserService;

@Controller
public class Homepage {
	@Resource(name="userservice")
	private UserService userservice;
	 @RequestMapping(value = "homepage", method = RequestMethod.GET)
	    public String goToPage(HttpSession session, Map<String, Object> map) {

	        return "admin/homePage";
}
	 //用户管理
	 @RequestMapping(value = "user", method = RequestMethod.GET)
	    public String goUsermanage(HttpSession session, Map<String, Object> map) {
		 List<User> userlist =new ArrayList<User>();
		 userlist=userservice.selectAll();
		 map.put("userList", userlist);
	        return "admin/UserManagepage";
}
	/* @ResponseBody
	 @RequestMapping(value ="admin/userlist",method=RequestMethod.GET)
	 public String getUserList(HttpSession session) {
		 List<User> userlist =new ArrayList<User>();
		 userlist=userservice.selectAll();
		 JSONObject object =new JSONObject();
		 object.put("usermap",userlist);
		 return object.toString();
	 }*/ 
//删除用户
	 @ResponseBody
	 @RequestMapping(value = "delete", method = RequestMethod.GET)
	    public String deleteUser(HttpSession session, Map<String, Object>  map,Integer user_id) {
		 JSONObject object =new JSONObject();
		 if(userservice.deleteUser(user_id)) {
			 map.put("success", true);
		 }else {
			 map.put("success", false);
		 }
		 List<User> userlist =new ArrayList<User>();
		 userlist=userservice.selectAll();
		 object.put("userList",userlist);
		 return object.toJSONString();
		/* map.put("userList", userlist);
	        return "admin/UserManagepage";*/
	 
}

}