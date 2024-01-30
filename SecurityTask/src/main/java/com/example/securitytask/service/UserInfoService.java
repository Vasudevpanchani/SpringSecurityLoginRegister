package com.example.securitytask.service;

import org.springframework.http.ResponseEntity;

import com.example.securitytask.dto.ResponseDTO;
import com.example.securitytask.model.UserInfo;

public interface UserInfoService {
	
	public ResponseEntity<ResponseDTO> registerData(UserInfo userInfo);

}
