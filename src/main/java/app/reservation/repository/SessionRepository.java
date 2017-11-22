package app.reservation.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.reservation.model.Appointment;
import app.reservation.model.Session;

@Repository
public interface SessionRepository extends CrudRepository<Session, Long> {

	
	//public List<Appointment> getAppiontment.
}
