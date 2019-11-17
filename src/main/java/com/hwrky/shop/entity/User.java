package com.hwrky.shop.entity;

import java.util.Date;

public class User {
private Integer user_id;
private String user_name;
private String user_pwd;
private String user_nickname;
private String user_sex;
private Date user_brithday;

public Date getUser_brithday() {
	return user_brithday;
}
public void setUser_brithday(Date date) {
	this.user_brithday = date;
}
public String getUser_nickname() {
	return user_nickname;
}
public void setUser_nickname(String user_nickname) {
	this.user_nickname = user_nickname;
}
public String getUser_sex() {
	return user_sex;
}
public void setUser_sex(String user_sex) {
	this.user_sex = user_sex;
}

public Integer getUser_id() {
	return user_id;
}
public void setUser_id(Integer user_id) {
	this.user_id = user_id;
}
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public String getUser_pwd() {
	return user_pwd;
}
public void setUser_pwd(String user_pwd) {
	this.user_pwd = user_pwd;
}

}