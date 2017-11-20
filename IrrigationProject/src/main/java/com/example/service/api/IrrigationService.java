package com.example.service.api;

import org.springframework.stereotype.Service;

import com.example.model.UserResponse;

@Service
public interface IrrigationService {

	public UserResponse userDetails();
}
