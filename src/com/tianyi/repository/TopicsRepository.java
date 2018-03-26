package com.tianyi.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.tianyi.util.DbUtil;

public class TopicsRepository {
	private Connection dbConnection;

	public TopicsRepository() {
		dbConnection = DbUtil.getConnection();
	}

	
	
	public List<String> getTopicList(String materialType){
		List<String> t=new ArrayList<>();
		if (dbConnection != null) {
			PreparedStatement prepStatement;
			try { 
				prepStatement = dbConnection
						.prepareStatement("select * from listeningmaterials where  materialgroup ='"+materialType+"'");
				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {
						t.add(result.getString(3));
						t.add(result.getString(6));
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		

		
		}
		
		return t;
		
	}




}
