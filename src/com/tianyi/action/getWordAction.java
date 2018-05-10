package com.tianyi.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.ListenMaterialRepository;
import com.tianyi.repository.OrderRepositoryRepository;
import com.tianyi.service.ScriptService;
import com.tianyi.service.StudentService;

public class getWordAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username;// ’À∫≈
	private String wordIndexValue;
	private int tempWordIndexValue;// √‹¬Î
	private String mtitle;
	private String price;
	private ScriptService scriptservice;
	OrderRepositoryRepository WR=new OrderRepositoryRepository();
	ScriptService SService=new ScriptService();
	// private Map<String,Object> dataMap;
    // getters & setters
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

 
	
	public String execute() {
		
		username= (String)ActionContext.getContext().getSession().get("insertName");
		wordIndexValue=(String)ActionContext.getContext().getSession().get("wordIndex");
		tempWordIndexValue=Integer.parseInt(wordIndexValue)+1;
		wordIndexValue=tempWordIndexValue+"";
		
		ActionContext.getContext().getSession().put("wordIndex", wordIndexValue);
		if (tempWordIndexValue>30) {
			ActionContext.getContext().getSession().put("wordIndex", "-1");
			return "generateScore";
		}else{return SUCCESS;}
		 
			
		
	
}}