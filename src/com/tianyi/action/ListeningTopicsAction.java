package com.tianyi.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.TopicsRepository;
import com.tianyi.service.StudentService;

public class ListeningTopicsAction extends ActionSupport{
	List<String> topiclist=new ArrayList<>();
	
	private String levelname;// ук╨е
	TopicsRepository TRepository=new TopicsRepository();

	
	public String getLevelname() {
		return levelname;
	}

	public void setLevelname(String levelname) {
		this.levelname = levelname;
	}
	    public String execute() {
            
            
	    	//topiclist=TRepository.getTopicList(levelname);
	    	topiclist.add("hey");
	    	topiclist.add("you");
			return SUCCESS;
		
	

	
}}