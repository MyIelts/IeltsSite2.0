package com.tianyi.action;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.TopicsRepository;
import com.tianyi.service.StudentService;

public class getWritingQuestionAction extends ActionSupport {

	//private String usertext;
	private String writequestionname;
	
	TopicsRepository TRepository = new TopicsRepository();

	public String getWritequestionname() {
		return writequestionname;
	}

	public void setWritequestionname(String writequestionname) {
		this.writequestionname = writequestionname;
	}

	
	
	
	
	



	public String execute() throws UnsupportedEncodingException {
		
		
		ActionContext.getContext().getSession().put("writingQuestion", writequestionname);
	
		
	
		
		/*
		 * topiclist=TRepository.getTopicList(levelname);
		 * titleone=topiclist.get(1); introone=topiclist.get(2);
		 */

		return SUCCESS;

	}
}