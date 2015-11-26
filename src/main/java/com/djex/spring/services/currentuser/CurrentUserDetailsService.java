package com.djex.spring.services.currentuser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.djex.spring.models.CurrentUser;
import com.djex.spring.models.User;
import com.djex.spring.services.user.UserService;

@Service
public class CurrentUserDetailsService implements UserDetailsService {

	private final UserService userService;

	@Autowired
	public CurrentUserDetailsService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public CurrentUser loadUserByUsername(String email) throws UsernameNotFoundException {
		User user = userService.getUserByEmail(email).orElseThrow(
				() -> new UsernameNotFoundException(String.format("User with email=%s was not found", email)));
		return new CurrentUser(user);
	}

}