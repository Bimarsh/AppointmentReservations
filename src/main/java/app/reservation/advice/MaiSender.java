package app.reservation.advice;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;

import app.reservation.service.EmailService;

@Aspect
public class MaiSender {
	@Autowired
	private EmailService emailService;
	
	@After("execution=(* app.reservation.controller.AppointmentController.add)")
	public void afterMakeAppoitment(JoinPoint joinpoint) {
		
	}
}
