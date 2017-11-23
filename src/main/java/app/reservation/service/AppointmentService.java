package app.reservation.service;

import java.util.Date;
import java.util.List;

import app.reservation.model.Appointment;
import app.reservation.model.Session;

public interface AppointmentService {

	public void save(Appointment appointment);

	public List<Appointment> getAppointmentByPersonId(long personId);

	public List<Appointment> getAllAppointment();

	public void delete(Long appointmentId);

	public void update(Appointment appointment);
	
	public Appointment findById(Long appointmentId);
	
	public List<Appointment> findSessionBy36hours(Date date, Date time);

	public Appointment findDuplicateAptmt(Long id, Long id2);
}
