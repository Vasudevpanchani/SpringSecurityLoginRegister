package com.example.securitytask.config;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.securitytask.model.UserInfo;

public class CustomUser implements UserDetails {

	private UserInfo userInfo;

	public CustomUser(UserInfo userInfo) {
		super();
		this.userInfo = userInfo;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		SimpleGrantedAuthority authority=new SimpleGrantedAuthority(userInfo.getRole());
		return Arrays.asList(authority);
	}

	@Override
	public String getPassword() {
		return userInfo.getPassword();
	}

	@Override
	public String getUsername() {
		return userInfo.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
