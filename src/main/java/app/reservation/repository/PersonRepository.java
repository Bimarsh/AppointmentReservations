package app.reservation.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.reservation.model.Person;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {

}
