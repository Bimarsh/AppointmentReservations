package app.reservation.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.reservation.model.Appointment;
import app.reservation.model.Person;
import app.reservation.model.Session;
import app.reservation.service.AppointmentService;
import app.reservation.service.PersonService;
import app.reservation.service.SessionService;

@Controller
@RequestMapping("/appointment")
public class AppointmentController {

	
	@Autowired
	private SessionService sessionService;
	@Autowired
	private PersonService personService; 
	@Autowired
	private AppointmentService appointmentService;

	@RequestMapping(value = "/addAppointment/{id}", method = RequestMethod.POST)
	public String add(@PathVariable long id,BindingResult result, Model model ) {
		
		Person person = personService.findById((long) 1);
		
		Session session = sessionService.findOne(id);
		
		
		if (result.hasErrors()) {

			return "session";

		}
		appointmentService.save(new Appointment(session, person));
		return "redirect:/appointment/appointmentList/" ;//+ appointment.getPerson().getId();
	}
	
	
	

	@RequestMapping(value = "/appointmentList/{id}", method = RequestMethod.GET)
	public String get(@PathVariable long id, Model model) {
		model.addAttribute("appointment", appointmentService.getAppointmentByPersonId(id));
		return "appointmentList";
		
		
		
	}
	@RequestMapping(value = "/updateAppointment/{id}", method = RequestMethod.GET)
	public String updateAppointment(@PathVariable Long id, @ModelAttribute("appointment") Appointment appointment, Model modle) {
	//Appointment updateAppointment = appointmentService
		modle.addAttribute("mode", "EDIT_APPIONTMNE");
	//	modle.addAttribute("update", updateAppointment);
		return "appointmentList";
	}

	 
	  
	  @RequestMapping(value = "/deletAppointment/{id}", method = RequestMethod.GET)
	  public String deleteAppointment(long appointmentId) {
	  appointmentService.delete(appointmentId);
	  return   "redirect:/appointment/appointmentList";
	  
	  }
	  


}
