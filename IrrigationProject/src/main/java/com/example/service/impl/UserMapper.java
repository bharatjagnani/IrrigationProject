package com.example.service.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.example.model.User;

public class UserMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUserid(rs.getLong("userid"));
		user.setEmail(rs.getString("email"));
		user.setEnabled(rs.getInt("enabled"));
		user.setPassword(rs.getString("password"));
		user.setUserName(rs.getString("username"));
		
		
		return user;
	}

	
}
