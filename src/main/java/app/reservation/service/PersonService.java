package app.reservation.service;

import java.util.List;

import app.reservation.model.Person;
import app.reservation.model.UserRoles;

public interface PersonService {

	Person findById(Long id);

	List<Person> findAll();

	Person saveUser(Person person);

	Person updatePerson(Person person);

	void deletePerson(Long id);

	List<Person> findPersonByRoleName(UserRoles userRole);

	Person findByUserName(String username);
}
