package app.reservation.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.reservation.model.Appointment;
import app.reservation.repository.AppointmentRepository;
import app.reservation.service.AppointmentService;

@Service
public class AppointmentServiceImp implements AppointmentService {

	@Autowired
	AppointmentRepository appoinymentRepository;

	public void save(Appointment appointment) {
		appoinymentRepository.save(appointment);
	}

	@Override
	public List<Appointment> getAppointmentByPersonId(long personId) {
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

	@Override
	public Appointment findById(Long appointmentId) {
		return appoinymentRepository.findOne(appointmentId);
	}

	@Override
	public List<Appointment> findSessionBy36hours(Date date, Date time) {
		return appoinymentRepository.findSessionBefore36hours(date, time);
	}

}
