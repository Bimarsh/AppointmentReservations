package app.reservation.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.reservation.model.User;
import app.reservation.repository.UserRepository;
import app.reservation.service.UserService;


@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public User findByUsername(String name) {
		// TODO Auto-generated method stub
		return userRepository.findByUsername(name);
	}

}
