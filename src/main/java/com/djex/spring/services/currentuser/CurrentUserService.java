package com.djex.spring.services.currentuser;

import com.djex.spring.models.CurrentUser;

public interface CurrentUserService {

	boolean canAccessUser(CurrentUser currentUser, Long userId);
}
