package app.reservation.service;

import java.util.List;

import app.reservation.model.Appointment;

public interface AppointmentService {

	public void save(Appointment appointment);

	
	public List<Appointment> getAppointmentByPersonId(long personId);

	public List<Appointment> getAllAppointment();

	public void delete(Long appointmentId);

	public void update(Appointment appointment);
}
