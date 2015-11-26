package com.djex.spring.repositories;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.djex.spring.models.User;

@Transactional
public interface UserRepository extends JpaRepository<User, Long> {

	Optional<User> findOneByEmail(String email);
}
