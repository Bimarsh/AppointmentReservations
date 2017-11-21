package app.reservation.repository;

import org.springframework.data.repository.CrudRepository;

import app.reservation.model.Appointment;

public interface AppointmentRepository extends CrudRepository<Appointment, Long> {

}
