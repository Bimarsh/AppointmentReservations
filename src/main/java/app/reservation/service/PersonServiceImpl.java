package app.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.reservation.model.Person;
import app.reservation.repository.PersonRepository;

@Service
@Transactional
public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonRepository personRepository;

	@Override
	public Person saveUser(Person person) {

		return personRepository.save(person);
	}

	@Override
	public Person updatePerson(Person person) {

		return personRepository.save(person);
	}

	@Override
	public void deletePerson(Long id) {

		personRepository.delete(id);
	}

	@Override
	public List<Person> findPersonByRoleName(String roleName) {

		// return personRepository.findByRoleNmae();
		return null;
	}

	@Override
	public Person findById(Long id) {

		return personRepository.findOne(id);
	}

	@Override
	public List<Person> findAll() {
		List<Person> persons = (List<Person>) personRepository.findAll();
		return (List<Person>) personRepository.findAll();
	}

}
