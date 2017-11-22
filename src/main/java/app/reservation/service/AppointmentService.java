package app.reservation.service;

import java.util.List;

import app.reservation.model.Appointment;

public interface AppointmentService {

	public void save(Appointment appointment);

	public void update(Appointment appointment);

	public List<Appointment> getAllAppointment();

	public List<Appointment> getAppointmentByPersonId(Long personId);

	public void delete(Long appointmentId);

}
