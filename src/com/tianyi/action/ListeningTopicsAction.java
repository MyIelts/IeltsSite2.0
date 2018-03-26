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
	private String levels;
	TopicsRepository TRepository=new TopicsRepository();
	public String getlevels() {
		
		return levels;
	}

	public void setlevels(String levels) {
		this.levels = levels;
	}
	    public String execute() {
            System.out.println(levels);
            
	    	topiclist=TRepository.getTopicList("Rookie");
	    	System.out.println(topiclist.get(2));
			return SUCCESS;
		
	

	
}}