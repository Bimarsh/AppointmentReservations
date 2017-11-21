package app.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.reservation.model.Appointment;
import app.reservation.service.AppointmentService;

@Controller
public class AppointmentController {
	

	@Autowired
		private AppointmentService appointmentService;
		
		@RequestMapping(value="/appointments", method=RequestMethod.GET)
		public String getAll(Model model) {
			model.addAttribute("appointments", appointmentService.getAllAppointment());
			return "appointmentList";
		}
		
		@RequestMapping(value="/appointments", method=RequestMethod.POST)
		public String add(Appointment appointment) {
			appointmentService.save(appointment);
			return "redirect:/appointments";
		}

		@RequestMapping(value="/appointments/{id}", method=RequestMethod.GET)
		public String get(@PathVariable long id, Model model) {
			model.addAttribute("appointment", appointmentService.getAppointment(id));
			return "appointmentDetail";
		}
		
		@RequestMapping(value="/appointments/{id}", method=RequestMethod.POST)
		public String update(Appointment appointment, @PathVariable long id) {
			appointmentService.update(appointment); 
			return "redirect:/appointments";
		}
		
		@RequestMapping(value="/appointments/delete", method=RequestMethod.POST)
		public String delete(long appointmentId) {
			appointmentService.delete(appointmentId);
			return "redirect:/appointments";
		}


		
	}


