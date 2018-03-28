package com.tianyi.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.TopicsRepository;
import com.tianyi.service.StudentService;

public class ListeningTopicsAction extends ActionSupport {
	List<List<String>> topiclists=new ArrayList<List<String>>();
	List<String> topiclist = new ArrayList<>();
	//private String usertext;
	private String levelname;
	private String title1;
	private String intro1;
	TopicsRepository TRepository = new TopicsRepository();

	public String getLevelname() {
		return levelname;
	}

	public void setLevelname(String levelname) {
		this.levelname = levelname;
	}


	public List<String> getTopiclist() {
		return topiclist;
	}

	public void setTopiclist(List<String> topiclist) {
		this.topiclist = topiclist;
	}

	public String execute() {
	
		topiclist.add("topic1");
		topiclist.add("topic2");
		/*
		 * topiclist=TRepository.getTopicList(levelname);
		 * title1=topiclist.get(1); intro1=topiclist.get(2);
		 */

		return SUCCESS;

	}
}