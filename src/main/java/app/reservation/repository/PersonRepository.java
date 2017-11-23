package app.reservation.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.reservation.model.Person;
import app.reservation.model.UserRoles;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {

	Person findPersonByUserUsername(String username);
	
	List<Person> getPersonByUserUserRoles(UserRoles userRole);

}
