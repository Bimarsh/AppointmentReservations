package app.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import app.reservation.model.Appointment;

import app.reservation.service.AppointmentService;


@Controller
@RequestMapping("/appointment")
public class AppointmentController {

	@Autowired
	private AppointmentService appointmentService;

	

	@RequestMapping(value = "/addAppointment", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("appointment") Appointment appointment, BindingResult result,
			Model model) {
		if (result.hasErrors()) {

			return "session";

		}
		appointmentService.save(appointment);
		return "redirect:/appointment/appointmentList/"+appointment.getPerson().getId();
	}

	@RequestMapping(value = "/appointmentList/{id}", method = RequestMethod.GET)
	public String get(@PathVariable long id, Model model) {
		model.addAttribute("appointment", appointmentService.getAppointmentByPersonId(id));
		return "appointmentList";
	}

	/*@RequestMapping(value = "/updateAppointment/{id}", method = RequestMethod.GET)
	public String updateAppointment(@PathVariable Long id, @ModelAttribute("appointment") Appointment appointment,
			Model modle) {

		Appointment updateAppointment = appointmentService.getAppointment(id);
		 appointmentService.update(appointment); 
		modle.addAttribute("mode", "EDIT_APPIONTMNET");
		modle.addAttribute("update", updateAppointment);
		return "appointment";
	}

	@RequestMapping(value = "/deletAppointment/{id}", method = RequestMethod.GET)
	public String deleteAppointment(long appointmentId) {
		appointmentService.delete(appointmentId);
		return "redirect:/appointment/appointmentList";

	}

	@RequestMapping(value = "/appointmentList", method = RequestMethod.GET)
	public String getAppointmentList(Model model) {

		model.addAttribute("appointmentList", appointmentService.getAllAppointment());
		System.out.println("====" + appointmentService.getAllAppointment());
		return "appointmentView";
	}*/

}
