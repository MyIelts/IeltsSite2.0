package com.tianyi.action;

import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.service.StudentService;

public class LogAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String username;// 账号
	private String password;// 密码

	// getters & setters
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * execute方法会在该Action类被调用的时候自动执行, 如果 账号="admin"并且密码="123456"，就返回SUCCESS
	 * 否则返回ERROR
	 */
	public String execute() {

		String queryResult = "";
		StudentService studentService = new StudentService();

		if (studentService != null) {
			queryResult = studentService.findByLogin(username, password);
		}
           System.out.println(queryResult);
		if (queryResult.equals("LoginFailure")) {
			return ERROR;
		} else {return SUCCESS;
		}
	
}}