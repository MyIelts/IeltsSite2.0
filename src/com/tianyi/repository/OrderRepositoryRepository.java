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
import java.util.Map;

import com.tianyi.util.DbUtil;

public class OrderRepositoryRepository {
	private Connection dbConnection;
    public String orderNumber;
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


	public boolean updateOrderRecord(String OrderNumber) throws SQLException {
		boolean result=false;
		if (dbConnection != null) {
			Statement st = null;
			st = dbConnection.createStatement();

			try {
				
				String sql2 = "UPDATE payment SET OrderStatus = 'OrderPaid' WHERE OrderId = '"+OrderNumber+"' ";
				int result2 = st.executeUpdate(sql2);
	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		}
		
		return result;
		
		
		
		
	}
	public String storeWritingRecord(String username, String essay,String question) throws SQLException {
		
		 String price="";
			String category = "";
		if (dbConnection != null) {
			Statement st = null;
			st = dbConnection.createStatement();

			PreparedStatement prepStatement;
			try {
				prepStatement = dbConnection
						.prepareStatement("select * from writingmaterials where  title ='" + question + "'");
				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {

						category = result.getString(5);

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
		         String orderNo= System.currentTimeMillis()+"";   
		         String writingRecordID="Writing"+System.currentTimeMillis();
		         this.orderNumber=orderNo;
				try {
					
					String sql2 = "insert into writingrecords (RecordId,UserName,WritingTitle,WritingContents,WritingTime,WritingScore,status) values ('"+writingRecordID+"','"
							+ username + "','" + question + "','"+essay+"','NA','NA','Unassigned')";
					int result2 = st.executeUpdate(sql2);
					
					
					String sql = "insert into payment (OrderId,UserName ,PaymentTime,PaymentMethod,PaymentAmount,OrderStatus,TaskId) values ('"+orderNo+"','"
							+ username + "','" + currentTime + "','','"+price+"','NotPaid','"+writingRecordID+"')";
					int result = st.executeUpdate(sql);
					
			
					//insert into records
					
					
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
         

		return price;
	}


}
