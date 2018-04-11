package com.tianyi.action;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianyi.repository.ListenMaterialRepository;
import com.tianyi.service.ScriptService;
import com.tianyi.service.StudentService;

public class getListenQuestionAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username; 
	private String title; 
	private String path;
	private String script;
	private String intro;
	
	List<String> listenMaterial = new ArrayList<>();
	ListenMaterialRepository LRepository=new ListenMaterialRepository();
	// private Map<String,Object> dataMap;
    // getters & setters
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	public String getIntro() {
		return intro;
	}

	public void setIntro2(String intro) {
		this.intro = intro;
	}
	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}
 
	
	public String execute() throws UnsupportedEncodingException {
		listenMaterial=LRepository.getTopicList(title);
		
		
		path=listenMaterial.get(2);
		intro=URLEncoder.encode(listenMaterial.get(3),"utf-8");
		
		 
			return SUCCESS;
		
	
}}