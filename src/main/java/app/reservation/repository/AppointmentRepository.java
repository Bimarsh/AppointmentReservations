package app.reservation.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import app.reservation.model.Appointment;

public interface AppointmentRepository extends CrudRepository<Appointment, Long> {
	
	public List<Appointment> getAppointmentByPersonId(long id);

}
