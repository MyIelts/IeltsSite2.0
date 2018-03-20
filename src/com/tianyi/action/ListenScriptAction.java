package com.tianyi.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.service.StudentService;

public class ListenScriptAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username;// ’À∫≈
	private String listenText;// √‹¬Î
	   private Map<String,Object> dataMap;
    // getters & setters
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getlistenText() {
		return listenText;
	}

	public void setlistenText(String listenText) {
		this.listenText = listenText;
	}

 
	
	public String execute() {

	
		dataMap.put("listenScript", listenText);  
	    dataMap.put("success", true);  
	    System.out.println("Goes here");
		if (listenText.equals("")) {
			return ERROR;
		} else {
		
			return SUCCESS;
		}
	
}}