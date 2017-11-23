package app.reservation.service;

import app.reservation.model.Appointment;
import app.reservation.model.Mail;
import app.reservation.model.User;

public interface EmailService {
	public void sendEmail(Mail mail);
	public void sendMailAfterCreateAppointment(User user, Appointment appointment, String action);
}
