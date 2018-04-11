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

public class getWritingTopicsAction extends ActionSupport {

	//private String usertext;
	private String levelname;
	
	TopicsRepository TRepository = new TopicsRepository();

	public String getLevelname() {
		return levelname;
	}

	public void setLevelname(String levelname) {
		this.levelname = levelname;
	}

	
	
	
	
	



	public String execute() throws UnsupportedEncodingException {
		//System.out.println(levelname);
		
		ActionContext.getContext().getSession().put("writingCatagory", levelname);
	
		
	
		
		/*
		 * topiclist=TRepository.getTopicList(levelname);
		 * titleone=topiclist.get(1); introone=topiclist.get(2);
		 */

		return SUCCESS;

	}
}