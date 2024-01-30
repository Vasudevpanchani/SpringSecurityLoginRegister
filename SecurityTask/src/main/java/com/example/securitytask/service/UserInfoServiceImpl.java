package com.example.securitytask.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.securitytask.dto.ResponseDTO;
import com.example.securitytask.model.UserInfo;
import com.example.securitytask.repository.UserInfoRepository;

@Service
public class UserInfoServiceImpl implements UserInfoService{
	
	ResponseDTO response=new ResponseDTO();
	
	private void setResponseData(int status,String message,Object data) {
		response.setStatus(status);
		response.setMessage(message);
		response.setData(data);
	}
	
	@Autowired
	private UserInfoRepository userInfoRepository;
	
	private BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();

	@Override
	public ResponseEntity<ResponseDTO> registerData(UserInfo userInfo) {
		String password = passwordEncoder.encode(userInfo.getPassword());
		userInfo.setPassword(password);
		UserInfo user = userInfoRepository.findByUsername(userInfo.getUsername());
		if(user == null) {
			UserInfo data = userInfoRepository.save(userInfo);
			setResponseData(200, "Registered Succesfully", data);
			return new ResponseEntity<ResponseDTO>(response,HttpStatus.ACCEPTED);
		}else {
			setResponseData(400, "User Already Exist", password);
			return new ResponseEntity<ResponseDTO>(response,HttpStatus.BAD_REQUEST);
		}
		
	}

	

}
