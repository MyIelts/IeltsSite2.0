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

public class ListenMaterialRepository {
	private Connection dbConnection;

	public ListenMaterialRepository() {
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

	public String getScript(String title) {

		String Script = "";
		if (dbConnection != null) {
			PreparedStatement prepStatement;
			try {
				prepStatement = dbConnection
						.prepareStatement("select * from listeningmaterials where  MaterialTitle ='" + title + "'");
				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {

						Script = result.getString(4);

					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return Script;

	}
   
	public void storeListeningRecord(String username, String title, String processedScript) throws SQLException {
		if (dbConnection != null) {
			Statement st = null;
			st = dbConnection.createStatement();

			PreparedStatement prepStatement;
			 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	         String currentTime=df.format(new Date());
			try {
				String sql = "insert into listeningrecords (UserName,ListeningTitle,listeningtime,ListeningAccuration ) values ('"
						+ username + "','" + title + "','"+currentTime+"','" + processedScript + "')";
				int result = st.executeUpdate(sql);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

}
