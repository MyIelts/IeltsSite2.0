package com.tianyi.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.tianyi.util.DbUtil;

public class StudentRepository {
	private Connection dbConnection;

	public StudentRepository() {
		dbConnection = DbUtil.getConnection();
	}

	public void save(String userName, String password, String firstName,
			String phoneNumber, String accountType, String emailAddress) {
		if (dbConnection != null) {
			try {
				PreparedStatement prepStatement = dbConnection
						.prepareStatement("insert into Accounts(UserType,UserName,UserPwd, Name, Phone, Email, Status,IletsScore) values (?,?, ?, ?, ?, ?,'pending', '0')");
				prepStatement.setString(1, accountType);
				prepStatement.setString(2, userName);
				prepStatement.setString(3, password);
				prepStatement.setString(4, firstName);
				prepStatement.setString(5, phoneNumber);				
				
				/*prepStatement.setDate(5, new java.sql.Date(new SimpleDateFormat("MM/dd/yyyy")
				.parse(dateOfBirth.substring(0, 10)).getTime()));*/

				prepStatement.setString(6, emailAddress);

				prepStatement.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}/* catch (ParseException e) {				
				e.printStackTrace();
			}*/
		}
	}

	public boolean findByUserName(String userName) {
		if (dbConnection != null) {
			try {
				PreparedStatement prepStatement = dbConnection
						.prepareStatement("select count(*) from accounts where userName = ?");
				prepStatement.setString(1, userName);

				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {
						if (result.getInt(1) == 1) {
							return true;
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	public boolean findByLogin(String userName, String password) {
		if (dbConnection != null) {
			try {
				PreparedStatement prepStatement = dbConnection
						.prepareStatement("select UserPwd from accounts where userName = ?");
				prepStatement.setString(1, userName);

				ResultSet result = prepStatement.executeQuery();
				System.out.println("search for result"+result);
				if (result != null) {
					while (result.next()) {
						if (result.getString(1).equals(password)) {
							return true;
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

}
