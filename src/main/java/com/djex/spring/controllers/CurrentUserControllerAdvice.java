package com.djex.spring.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.djex.spring.models.CurrentUser;

@ControllerAdvice
public class CurrentUserControllerAdvice {

	@ModelAttribute("currentUser")
	public CurrentUser getCurrentUser(Authentication authentication) {
		return (authentication == null) ? null : (CurrentUser) authentication.getPrincipal();
	}

}