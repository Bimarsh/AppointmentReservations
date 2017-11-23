package app.reservation.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import app.reservation.model.Mail;
import app.reservation.model.Session;
import app.reservation.service.EmailService;
import app.reservation.service.SessionService;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
@Service
@EnableScheduling
public class EmailServiceImpl implements EmailService{
	@Autowired
    JavaMailSender mailSender;
	
	@Autowired
    VelocityEngine velocityEngine;
 
	@Autowired
	SessionService sessionService;
	
    public void sendEmail(Mail mail) {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
 
        try {
 
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
 
            mimeMessageHelper.setSubject(mail.getMailSubject());
            mimeMessageHelper.setFrom(mail.getMailFrom());
            mimeMessageHelper.setTo(mail.getMailTo());
            mail.setMailContent(geContentFromTemplate(mail.getModel(), mail.getMailTemplate()));
            mimeMessageHelper.setText(mail.getMailContent(), true);
 
            mailSender.send(mimeMessageHelper.getMimeMessage());
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
 
    @SuppressWarnings("deprecation")
	public String geContentFromTemplate(Map < String, Object > model, String template) {
        StringBuffer content = new StringBuffer();
        try {
        	//templates/email-template.vm
            content.append(VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "/templates/" + template, model));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return content.toString();
    }
    
//    @Scheduled(cron = "0/5 * * * * *")
    public void sendReminder() {
    	System.out.println("scheduler is running xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
    	Date date = new Date();
    	Date time = new Date();
    	date.setDate(date.getDate() + 1);
    	time.setSeconds(0);
    	List<Session> sessions = sessionService.findSessionBy36hours(date, time);
    	for (Session s: sessions) {
    		System.out.println(s.toString());
    	}
    }
 
}
