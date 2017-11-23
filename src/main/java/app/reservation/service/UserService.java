package app.reservation.service;

import app.reservation.model.User;

public interface UserService {
	User findByUsername(String name);
}
