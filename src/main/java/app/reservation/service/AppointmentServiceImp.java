package app.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.reservation.model.Appointment;
import app.reservation.model.Session;
import app.reservation.repository.AppointmentRepository;

@Service
public class AppointmentServiceImp implements AppointmentService {

	@Autowired
	AppointmentRepository appoinymentRepository;

	@Autowired
	SessionService sessionService;

	public void save(Appointment appointment) {

		Session session = sessionService.findOne(appointment.getSession().getId());

		if (session.getSeat() > 24) {
			///
		} else

			appoinymentRepository.save(appointment);
	}

	@Override
	public List<Appointment> getAppointmentByPersonId(Long personId) {
		return appoinymentRepository.getAppointmentByPersonId(personId);
	}

	@Override
	public List<Appointment> getAllAppointment() {

		return (List<Appointment>) appoinymentRepository.findAll();
	}

	@Override
	public void delete(Long appointmentID) {

		appoinymentRepository.delete(appointmentID);
	}

	@Override
	public void update(Appointment appointment) {

		appoinymentRepository.save(appointment);
	}

}
