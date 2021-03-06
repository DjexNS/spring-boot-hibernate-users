package com.djex.spring.services.user;

import java.util.Collection;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.djex.spring.models.User;
import com.djex.spring.models.UserCreateForm;

@Service
public interface UserService {

	Optional<User> getUserById(long id);

	Optional<User> getUserByEmail(String email);

	Collection<User> getAllUsers();

	User create(UserCreateForm form);
}
