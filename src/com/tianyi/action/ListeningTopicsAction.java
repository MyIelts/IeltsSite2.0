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

public class ListeningTopicsAction extends ActionSupport {
	List<List<String>> topiclists=new ArrayList<List<String>>();
	List<String> topiclist = new ArrayList<>();
	//private String usertext;
	private String levelname;
	private String title1;
	private String intro1;
	private String title2;
	private String intro2;
	private String title3;
	private String intro3;
	private String title4;
	private String intro4;
	TopicsRepository TRepository = new TopicsRepository();

	public String getLevelname() {
		return levelname;
	}

	public void setLevelname(String levelname) {
		this.levelname = levelname;
	}
	public String getIntro1() {
		return intro1;
	}

	public void setIntro1(String intro1) {
		this.intro1 = intro1;
	}
	public String getTitle1() {
		return title1;
	}

	public void setTitle1(String title1) {
		this.title1 = title1;
	}

	public String getTitle2() {
		return title2;
	}

	public void setTitle2(String title2) {
		this.title2 = title2;
	}
	public String getIntro2() {
		return intro2;
	}

	public void setIntro2(String intro2) {
		this.intro2 = intro2;
	}
	public String getTitle3() {
		return title3;
	}

	public void setTitle3(String title3) {
		this.title3 = title3;
	}
	public String getIntro3() {
		return intro3;
	}

	public void setIntro3(String intro3) {
		this.intro3 = intro3;
	}

	public String getTitle4() {
		return title4;
	}

	public void setTitle4(String title4) {
		this.title4 = title4;
	}
	public String getIntro4() {
		return intro4;
	}

	public void setIntro4(String intro4) {
		this.intro4 = intro4;
	}

	
	
	
	
	

	public List<String> getTopiclist() {
		return topiclist;
	}

	public void setTopiclist(List<String> topiclist) {
		this.topiclist = topiclist;
	}

	public String execute() throws UnsupportedEncodingException {
		topiclist=TRepository.getTopicList(levelname);
		
		//intro1=topiclist.get(0);
		intro1=URLEncoder.encode(topiclist.get(0),"utf-8");
		
		title1=URLEncoder.encode(topiclist.get(1),"utf-8");
		intro2=URLEncoder.encode(topiclist.get(2),"utf-8");
		title2=URLEncoder.encode(topiclist.get(3),"utf-8");
		intro3=URLEncoder.encode(topiclist.get(4),"utf-8");
		title3=URLEncoder.encode(topiclist.get(5),"utf-8");
		intro4=URLEncoder.encode(topiclist.get(6),"utf-8");
		title4=URLEncoder.encode(topiclist.get(7),"utf-8");
		
	
		
		/*
		 * topiclist=TRepository.getTopicList(levelname);
		 * titleone=topiclist.get(1); introone=topiclist.get(2);
		 */

		return SUCCESS;

	}
}