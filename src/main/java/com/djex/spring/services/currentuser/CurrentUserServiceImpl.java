package com.djex.spring.services.currentuser;

import org.springframework.stereotype.Service;

import com.djex.spring.models.CurrentUser;
import com.djex.spring.models.Role;

@Service
public class CurrentUserServiceImpl implements CurrentUserService {

	@Override
	public boolean canAccessUser(CurrentUser currentUser, Long userId) {
		return currentUser != null && (currentUser.getRole() == Role.ADMIN || currentUser.getId().equals(userId));
	}

}