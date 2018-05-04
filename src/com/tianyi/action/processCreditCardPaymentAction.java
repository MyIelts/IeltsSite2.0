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

public class processCreditCardPaymentAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String cardname;// ’À∫≈
	private String ccnumber;// √‹¬Î
	
	private String orderNumber;
	private ScriptService scriptservice;
	OrderRepositoryRepository WR=new OrderRepositoryRepository();
	ScriptService SService=new ScriptService();
	// private Map<String,Object> dataMap;
    // getters & setters
	
	public String getCardname() {
		return cardname;
	}

	public void setCardname(String cardname) {
		this.cardname = cardname;
	}
	
	public String getCcnumber() {
		return ccnumber;
	}

	public void setCcnumber(String ccnumber) {
		this.ccnumber = ccnumber;
	}


 
	
	public String execute() throws SQLException {
		orderNumber=(String)ActionContext.getContext().getSession().get("currentOrder");
	
		if (this.ccnumber.equals("4111111111111111")) {
			if(WR.updateOrderRecord(orderNumber)) {
				return SUCCESS;
			}
			else {return ERROR;}
			
			
		} else {
			
		
			return ERROR;
		}
		
	
}}