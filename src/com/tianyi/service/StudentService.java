package com.tianyi.service;

import com.tianyi.repository.StudentRepository;

public class StudentService {
    public String usertype="";
	private StudentRepository studentRepository;

	public StudentService() {
		studentRepository = new StudentRepository();
	}

	public String save(String userName, String password,
			String firstName, String phoneNumber, String accountType,
			String emailAddress) {
		if (studentRepository != null) {
			if (studentRepository.findByUserName(userName)) {
				return "SignupFailure-UserNameExists";
			}
			studentRepository.save(userName, password, firstName, phoneNumber,
					accountType, emailAddress);
			return "SignupSuccess";
		} else {
			return "SignupFailure";
		}
	}

	public String findByLogin(String userName, String password) {
		String result = "LoginFailure";
		if (studentRepository != null) {
			boolean status = studentRepository.findByLogin(userName, password);
			if (status) {
				usertype=studentRepository.RepoUsertype;
				result = "LoginSuccess";
			}
		}
		return result;
	}
}
