package app.reservation.service;

import java.util.List;

import org.springframework.stereotype.Service;

import app.reservation.model.Appointment;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Override
	public void makeAppointment(Appointment appointment) {
		// TODO Auto-generated method stub

	}

	@Override
	public void cancelAppointment(Long appointmentId) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Appointment> appointmentsOfACustomer(Long customerId) {
		// TODO Auto-generated method stub
		return null;
	}

}
