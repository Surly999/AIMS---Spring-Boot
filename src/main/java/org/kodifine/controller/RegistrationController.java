package org.kodifine.controller;

import org.kodifine.entity.Login;
import org.kodifine.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RegistrationController
{
	@Autowired
	private LoginRepository logRepo;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	
	@PostMapping("/register/user")
	public Login createUser(@RequestBody Login user)
	{
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		return logRepo.save(user);
	}
	
	
}
