package com.example.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.example.model.User;
import com.example.model.UserResponse;
import com.example.service.api.IrrigationService;

public class IrrigationServiceImpl implements IrrigationService {

	private static String username = "root";
	private static String password = "";
	private static String connectionString = "jdbc:mysql://localhost/irrigation";
	
	public UserResponse userDetails(){
		
		UserResponse userDetails = new UserResponse();
		Statement stmt = null;
		Connection con = null;
		
			try {
				 con = DriverManager.getConnection(connectionString, username, password);
				System.out.println("Connected");
				ArrayList<User> users = new ArrayList<User>();
				stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from users");
				while(rs.next()) {
					User user = new User();
					user.setFirstName(rs.getString("first_name"));
					user.setLastName(rs.getString("last_name"));
					user.setUserId(rs.getString("user_id"));
					user.setEmailId(rs.getString("email_id"));
					user.setMobileNumber(rs.getLong("mobile_number"));
					user.setPassword(rs.getString("password"));
					users.add(user);
				}
				userDetails.setUsers(users);
			} catch(Exception e) {
				System.out.println(e);
			}finally{
				if(stmt != null){
					try {
						stmt.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(con != null){
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
			}
		
			return userDetails;
		}
	
	
	
}
