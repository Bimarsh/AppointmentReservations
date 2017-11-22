package app.reservation.repository;

import org.springframework.data.repository.CrudRepository;

import app.reservation.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
	public User findByUsername(String username);

}
