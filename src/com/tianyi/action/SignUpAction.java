package com.tianyi.action;

import com.tianyi.service.StudentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

public class SignUpAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	private String Name;
	private String phone;
	private String accountType;
	private String emailAddress;
	private String pageName;
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
    public String getName() {
        return Name;
    }
    public void setName(String Name) {
        this.Name = Name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getaccountType() {
        return accountType;
    }
    public void setaccountType(String accountType) {
        this.accountType = accountType;
    }
    
   /* public String getEmail() {
    	
        return emailAddress;
    }
    public void setEmail(String emailAddress) {
        this.emailAddress = emailAddress;
    }*/
    public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
    
  //(String userName, String password, String firstName,
  	//String phoneNumber, String accountType, String emailAddress) {
    
    
    public String execute(){
    	
    	
    	
    	String insertResult = "";
    	System.out.println(username+" "+password+" "+Name+" "+
    			phone+" "+ accountType+" "+ emailAddress);
		StudentService studentService = new StudentService();

		if ( studentService != null) {
		
			insertResult = studentService.save(username, password, Name,
					phone, accountType, emailAddress);
							
		}
		if (insertResult.equals("SignupSuccess")) {
			
			
			return SUCCESS;
		} else {
			return ERROR;
		}

    }
}