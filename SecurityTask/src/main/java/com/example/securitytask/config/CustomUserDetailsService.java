package com.example.securitytask.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.securitytask.model.UserInfo;
import com.example.securitytask.repository.UserInfoRepository;

@Component
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private UserInfoRepository userInfoRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		UserInfo userData = userInfoRepository.findByUsername(username);
		if(userData == null) {
			throw new UsernameNotFoundException("Username Not Found!!"); 
		}
		
		return new CustomUser(userData);
	}

}
