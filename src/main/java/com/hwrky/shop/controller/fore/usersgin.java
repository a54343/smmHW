package com.hwrky.shop.controller.fore;

import com.alibaba.fastjson.JSONObject;
import com.hwrky.shop.controller.BaseController;
import com.hwrky.shop.entity.User;
import com.hwrky.shop.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

@Controller
public class usersgin extends BaseController {
	@Resource(name="userservice")
	private UserService userservice;

    //转到前台易优购-用户注册页
    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String goToPage(Map<String,Object> map) {
  
        return "login/regist";
    }

    //易优购前台-用户注册-ajax
    @ResponseBody
    @RequestMapping(value = "register/doRegister", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String register(
            @RequestParam(value = "user_name") String user_name  /*用户名 */,
            @RequestParam(value = "user_nickname") String user_nickname  /*用户昵称 */,
            @RequestParam(value = "user_pwd") String user_pwd /*用户密码*/,
            @RequestParam(value = "user_sex") String user_sex  /*用户性别*/,
            @RequestParam(value = "user_brithday") String user_brithday /*用户生日*/
    ) throws ParseException {
        logger.info("验证用户名是否存在");
        User duser= new User();
       duser.setUser_name(user_name);
        Integer count = userservice.getTotal(duser);
        if (count > 0) {
            logger.info("用户名已存在，返回错误信息!");
            JSONObject object = new JSONObject();
            object.put("success", false);
            object.put("msg", "用户名已存在，请重新输入！");
            return object.toJSONString();
        }
        logger.info("创建用户对象");
        User user = new User();
                user.setUser_name(user_name);
                user.setUser_nickname(user_nickname);
                user.setUser_pwd(user_pwd);
                user.setUser_sex(user_sex);
                user.setUser_brithday(new SimpleDateFormat("yyyy-MM-dd").parse(user_brithday));
        logger.info("用户注册");
        if (userservice.add(user)) {
            logger.info("注册成功");
            JSONObject object = new JSONObject();
            object.put("success", true);
            return object.toJSONString();
        } else {
            throw new RuntimeException();
        }
    }
}
