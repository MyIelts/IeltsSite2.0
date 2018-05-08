package com.tianyi.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.ListenMaterialRepository;
import com.tianyi.repository.OrderRepositoryRepository;
import com.tianyi.repository.TasksAssignmentRepository;
import com.tianyi.service.ScriptService;
import com.tianyi.service.StudentService;

public class AssignTasksAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username;// ’À∫≈
	private String usertext;// √‹¬Î
    private boolean updateresult;
    private boolean updateresultPhase2;
	private ScriptService scriptservice;
	TasksAssignmentRepository TR=new TasksAssignmentRepository();
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
		
		
		
		try {
			updateresult=TR.assignTasks();
			updateresultPhase2=TR.assignTasksPhase2();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		 
			return SUCCESS;
		
	
}}