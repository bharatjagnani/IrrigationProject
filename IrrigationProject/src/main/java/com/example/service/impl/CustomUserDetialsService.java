package com.example.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.model.CustoUserDetails;
import com.example.model.User;
import com.example.repository.UserRepository;
import com.example.repository.UserRolesRepository;

@Service
public class CustomUserDetialsService implements  UserDetailsService{

     @Autowired
	 private UserRepository userRepository;
     @Autowired
	 private UserRolesRepository userRolesRepository;
	 

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User user=userRepository.findByUserName(username);
		  if(null == user){
		   throw new UsernameNotFoundException("No user present with username: "+username);
		  }else{
		   List<String> userRoles=userRolesRepository.findRoleByUserName(username);
		   return new CustoUserDetails(user,userRoles);
		  }
	}

	
}
