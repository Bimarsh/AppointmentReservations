package app.reservation.service;

import java.util.List;

import app.reservation.model.Appointment;

public interface CustomerService {
	
	void makeAppointment(Appointment appointment);
	
	void cancelAppointment(Long appointmentId);
	
	List<Appointment> appointmentsOfACustomer(Long customerId);
	
}
