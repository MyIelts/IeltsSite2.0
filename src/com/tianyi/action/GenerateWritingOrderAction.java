package com.tianyi.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.ListenMaterialRepository;
import com.tianyi.service.ScriptService;
import com.tianyi.service.StudentService;

public class GenerateWritingOrderAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username;// ’À∫≈
	private String usertext;// √‹¬Î
	private String mtitle;
	private ScriptService scriptservice;
	ListenMaterialRepository LMR=new ListenMaterialRepository();
	ScriptService SService=new ScriptService();
	// private Map<String,Object> dataMap;
    // getters & setters
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getUsertext() {
		return usertext;
	}

	public void setUsertext(String usertext) {
		this.usertext = usertext;
	}


 
	
	public String execute() {
			
		username= (String)ActionContext.getContext().getSession().get("insertName");
		mtitle=(String)ActionContext.getContext().getSession().get("writingQuestion");
	
		
		
		 
			return SUCCESS;
		
	
}}