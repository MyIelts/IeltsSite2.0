package com.tianyi.action;

import com.tianyi.service.StudentService;
import com.opensymphony.xwork2.ActionSupport;

public class SignUpAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
	
	private String username;
	private String password;
	private String Name;
	private String phoneNumber;
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
    public String getPhoneNO() {
        return phoneNumber;
    }
    public void setPhoneNO(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    public String getUserType() {
        return accountType;
    }
    public void setUserType(String accountType) {
        this.accountType = accountType;
    }
    public String getEmail() {
        return emailAddress;
    }
    public void setEmail(String emailAddress) {
        this.emailAddress = emailAddress;
    }
    /**
     * execute�������ڸ�Action�౻���õ�ʱ���Զ�ִ��,
     * ��� �˺�="admin"��������="123456"���ͷ���SUCCESS
     * ���򷵻�ERROR
     */
    
    
  //(String userName, String password, String firstName,
  	//String phoneNumber, String accountType, String emailAddress) {
    
    
    public String execute(){
    	String result = "";
		StudentService studentService = new StudentService();

		if (pageName != null && studentService != null) {
			if (pageName.equals("signup")) {
				result = studentService.save(username, password, Name,
						phoneNumber, accountType, emailAddress);
				if (result.equals("SignupSuccess")) {
					result= SUCCESS;
				} else {
					result= ERROR;
				}
			}
		}
		return result;
    	/*System.out.println(username+" hey "+password);
        if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("123456")){
            return SUCCESS;
        }
        else
            return ERROR;*/
    }
}