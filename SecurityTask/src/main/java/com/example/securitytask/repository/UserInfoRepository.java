package com.example.securitytask.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.securitytask.model.UserInfo;

@Repository
public interface UserInfoRepository extends JpaRepository<UserInfo, Long>{
	
	public UserInfo findByUsername(String username);
	
}
