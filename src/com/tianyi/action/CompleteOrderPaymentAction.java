package com.tianyi.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.ListenMaterialRepository;
import com.tianyi.repository.OrderRepositoryRepository;
import com.tianyi.service.ScriptService;
import com.tianyi.service.StudentService;

public class CompleteOrderPaymentAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username;// ’À∫≈
	private String usertext;// √‹¬Î
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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
 
	
	public String execute() {
			System.out.println("process order!!!");
		username= (String)ActionContext.getContext().getSession().get("insertName");
		mtitle=(String)ActionContext.getContext().getSession().get("writingQuestion");
		try {
			price=WR.storeWritingRecord(username, usertext, mtitle);
			
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		 
			return SUCCESS;
		
	
}}