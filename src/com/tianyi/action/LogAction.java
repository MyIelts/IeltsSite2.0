package com.tianyi.action;

import com.opensymphony.xwork2.ActionSupport;

public class LogAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
    private String username;//�˺�
    private String password;//����
    
    //getters & setters
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    /**
     * execute�������ڸ�Action�౻���õ�ʱ���Զ�ִ��,
     * ��� �˺�="admin"��������="123456"���ͷ���SUCCESS
     * ���򷵻�ERROR
     */
    public String execute(){
    	System.out.println(username+" hey "+password);
        if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("123456")){
            return SUCCESS;
        }
        else
            return ERROR;
    }
}