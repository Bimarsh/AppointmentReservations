package app.reservation.service;

import app.reservation.model.Mail;

public interface EmailService {
	public void sendEmail(Mail mail);
}
