package com.example.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.example.model.User;



@Repository
public interface UserRepository extends JpaRepository<User, String>{

	 public User findByUserName(String username);
}
