package com.tianyi.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.service.ScriptService;
import com.tianyi.service.StudentService;

public class ListenScriptAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username;// ’À∫≈
	private String usertext;// √‹¬Î
	private ScriptService scriptservice;
	// private Map<String,Object> dataMap;
    // getters & setters
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsertext() {
		return usertext;
	}

	public void setUsertext(String usertext) {
		this.usertext = usertext;
	}


 
	
	public String execute() {
		usertext="process script";
	    System.out.println(usertext);
		 
			return SUCCESS;
		
	
}}