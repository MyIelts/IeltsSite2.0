package com.tianyi.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.tianyi.util.DbUtil;

public class TasksAssignmentRepository {
	private Connection dbConnection;

	public TasksAssignmentRepository() {
		dbConnection = DbUtil.getConnection();
	}

	public boolean assignTasks() throws SQLException {
		boolean functionResult = false;
		ArrayList teacherList = new ArrayList();
		String teacherWithNoAssignment;
		String tempTeacher;
		String tempRecordID = "";
		String tempStudent = "";
		String sql3;
		String sql2;
		int result2;
		int result3;
		boolean recordExist = false;
		if (dbConnection != null) {
			PreparedStatement prepStatement;
			PreparedStatement getRecord;
			ResultSet recordResult;
			Statement st = null;
			st = dbConnection.createStatement();
			try {
				prepStatement = dbConnection
						.prepareStatement("select distinct userName  from accounts where UserType='teacher' ");
				// SELECT min(countResult.taskNO), countResult.teacherName from(select count(*)
				// as taskNO,teacherName from tasklist group by teacherName) as countResult
				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {
						teacherList.add(result.getString(1));

						break;
					}
				}

				for (int i = 0; i < teacherList.size(); i++) {
					teacherWithNoAssignment = (String) teacherList.get(i);
					prepStatement = dbConnection.prepareStatement(
							"select TeacherName from tasklist  where taskStatus='assigned' and TeacherName='"
									+ teacherWithNoAssignment + "'");
					result = prepStatement.executeQuery();
					if (result == null) {
						getRecord = dbConnection.prepareStatement(
								"select  RecordId,UserName from writingrecords where status='Unassigned' limit 1");
						recordResult = getRecord.executeQuery();
						if (recordResult != null) {
							while (recordResult.next()) {
								tempRecordID = recordResult.getString(1);
								tempStudent = recordResult.getString(2);
								break;
							}
							sql3 = "insert into  tasklist( UserName,TeacherName,RecordId, TaskStatus) value('"
									+ tempStudent + "','" + teacherWithNoAssignment + "','" + tempRecordID
									+ "','assigned')";
							result3 = st.executeUpdate(sql3);
							sql2 = "update writingrecords set status='assigned' where RecordId='" + tempRecordID + "'";
							result2 = st.executeUpdate(sql2);

						}

					}

				}

				getRecord = dbConnection.prepareStatement(
						"select  RecordId,UserName from writingrecords where status='Unassigned' limit 1");
				recordResult = getRecord.executeQuery();
				if (recordResult != null) {
					recordExist = true;
					while (recordResult.next()) {
						tempRecordID = recordResult.getString(1);
						tempStudent = recordResult.getString(2);
						break;
					}
				}
				while (recordExist) {

					prepStatement = dbConnection.prepareStatement(
							"SELECT min(countResult.taskNO), countResult.teacherName from(select count(*) as taskNO,teacherName from tasklist group by teacherName) as countResult");

					result = prepStatement.executeQuery();
					if (result != null) {
						while (result.next()) {
							tempTeacher = result.getString(2);
							sql3 = "insert into  tasklist( UserName,TeacherName,RecordId, TaskStatus) value('"
									+ tempStudent + "','" + tempTeacher + "','" + tempRecordID + "','assigned')";
							result3 = st.executeUpdate(sql3);
							sql2 = "update writingrecords set status='assigned' where RecordId='" + tempRecordID + "'";
							result2 = st.executeUpdate(sql2);
							break;
						}
					}

					getRecord = dbConnection.prepareStatement(
							"select  RecordId,UserName from writingrecords where status='Unassigned' limit 1");
					recordResult = getRecord.executeQuery();
					if (recordResult != null) {
						recordExist = true;
						while (recordResult.next()) {
							tempRecordID = recordResult.getString(1);
							tempStudent = recordResult.getString(2);
							break;
						}
					}
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return functionResult;

	}

}
