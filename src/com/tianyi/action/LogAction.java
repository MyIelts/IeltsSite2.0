package com.tianyi.action;

import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.service.StudentService;

public class LogAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String username;// �˺�
	private String password;// ����

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
	 * execute�������ڸ�Action�౻���õ�ʱ���Զ�ִ��, ��� �˺�="admin"��������="123456"���ͷ���SUCCESS
	 * ���򷵻�ERROR
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