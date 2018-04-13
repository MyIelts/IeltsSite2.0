package com.tianyi.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.tianyi.util.DbUtil;

public class OrderRepositoryRepository {
	private Connection dbConnection;

	public OrderRepositoryRepository() {
		dbConnection = DbUtil.getConnection();
	}

	public List<String> getTopicList(String title) {
		List<String> t = new ArrayList<>();
		if (dbConnection != null) {
			PreparedStatement prepStatement;
			try {
				prepStatement = dbConnection
						.prepareStatement("select * from listeningmaterials where  MaterialTitle ='" + title + "'");
				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {
						t.add(result.getString(3));
						t.add(result.getString(4));
						t.add(result.getString(5));
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


   
	public void storeListeningRecord(String username, String essay,String question) throws SQLException {
		 String price="";
			String category = "";
		if (dbConnection != null) {
			Statement st = null;
			st = dbConnection.createStatement();

			PreparedStatement prepStatement;
			try {
				prepStatement = dbConnection
						.prepareStatement("select * from writingmaterial where  MaterialTitle ='" + question + "'");
				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {

						category = result.getString(4);

					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
			  if(category.equals("Task1")){
		          price="100.00";
		
	          }else{
	        	  price="300.00";
	          }
				 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		         String currentTime=df.format(new Date());
				try {
					String sql = "insert into order (UserName,question,listeningtime,ListeningAccuration,status) values ('"
							+ username + "','" + question + "','"+currentTime+"','" + essay + "')";
					int result = st.executeUpdate(sql);

					//insert into records
					String sql2 = "insert into writingrecord (UserName,question,listeningtime,ListeningAccuration,status) values ('"
							+ username + "','" + question + "','"+currentTime+"','" + essay + "')";
					int result2 = st.executeUpdate(sql);
					
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
         

		
	}

}
