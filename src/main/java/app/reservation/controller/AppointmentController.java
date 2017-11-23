package app.reservation.controller;

import javax.servlet.http.HttpSession;
import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.reservation.model.Appointment;
import app.reservation.model.Mail;
import app.reservation.model.Person;
import app.reservation.model.Session;
import app.reservation.model.User;
import app.reservation.repository.UserRepository;
import app.reservation.service.AppointmentService;
import app.reservation.service.EmailService;
import app.reservation.service.PersonService;
import app.reservation.service.SessionService;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private SessionService sessionService;
	@Autowired
	private PersonService personService;
	@Autowired
	private AppointmentService appointmentService;
	@Autowired
	private EmailService emailService;

	@RequestMapping(value = "/addAppointment/{id}", method = RequestMethod.GET)
	public String add(@PathVariable long id, HttpSession session) {
		// Get current user
		Authentication authority = SecurityContextHolder.getContext().getAuthentication();
		String name = authority.getName();
		System.out.println("all the names........................" + name);
		User user = userRepository.findByUsername(name);
		Person person = user.getPerson();

		// get Session
		Session sessionof = sessionService.findOne(id);

		// create appointment
		Appointment appointment = new Appointment();
		appointment.setPerson(person);
		appointment.setSession(sessionof);
		appointmentService.save(appointment);
		int a = sessionof.getSeat() - 1;
		sessionof.setSeat(a);
		sessionService.update(sessionof);
		emailService.sendMailAfterCreateAppointment(user, appointment);
		System.out.println("........................................................");

		return "redirect:/appointment/appointmentList/";// + appointment.getPerson().getId();
	}

	@RequestMapping(value = "/appointmentList", method = RequestMethod.GET)
	public String getAllAppointments(Model model) {
		model.addAttribute("appointments", appointmentService.getAllAppointment());
		return "appointmentList";

	}

	@RequestMapping(value = "/appointmentList/{id}", method = RequestMethod.GET)
	public String get(@PathVariable long id, Model model) {
		model.addAttribute("appointment", appointmentService.getAppointmentByPersonId(id));
		return "appointmentList";

	}

	@RequestMapping(value = "/updateAppointment/{id}", method = RequestMethod.GET)
	public String updateAppointment(@PathVariable Long id, @ModelAttribute("appointment") Appointment appointment,
			Model modle) {
		// Appointment updateAppointment = appointmentService
		modle.addAttribute("mode", "EDIT_APPIONTMNE");
		// modle.addAttribute("update", updateAppointment);
		return "appointmentList";
	}

	@RequestMapping(value = "/deletAppointment/{id}", method = RequestMethod.GET)
	public String deleteAppointment(@PathVariable long id) {
		Appointment appointment = appointmentService.findById(id);
		Session session = appointment.getSession();
		session.setSeat(session.getSeat()+11);
		sessionService.update(session);
		appointmentService.delete(id);

		return "redirect:/appointment/appointmentList";

	}

}
