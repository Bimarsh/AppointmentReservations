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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import app.reservation.model.Person;
import app.reservation.model.Session;
import app.reservation.service.SessionService;

@Controller
@RequestMapping("/session")
@SessionAttributes({"update"})
public class SessionController {

	@Autowired
	private SessionService sessionService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getSessionForm(@ModelAttribute("session") Session session, Model model) {

		List<String> coun = new ArrayList<String>();
		coun.add("Lwam");
		coun.add("Yoni");
		coun.add("Bereket");
		coun.add("tekle");
		model.addAttribute("coun", coun);

		return "session";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addSession(@Valid @ModelAttribute("session") Session session, BindingResult result, Model model) {

		if (result.hasErrors()) {

			return "session";

		}
		System.out.println("+++++++++++" + session);
		Person person = new Person();
		person.setFirstname("session.firstname");

		sessionService.save(session);

		return "redirect:/session/sessionList";

	}

	@RequestMapping(value = "/updateSession/{id}", method = RequestMethod.GET)
	public String updateSession(@PathVariable Long id, @ModelAttribute("session") Session session, Model modle) {
		Session updateSession = sessionService.findOne(id);
		modle.addAttribute("mode", "EDIT_SESSION");
		modle.addAttribute("update", updateSession);
		return "session";
	}

	@RequestMapping(value = "/deletSession/{id}", method = RequestMethod.GET)
	public String deletSession(@PathVariable Long id, RedirectAttributes redirect) {

		sessionService.delete(id);
		return "redirect:/session/sessionList";

	}

	@RequestMapping(value = { "/sessionList", "/", "" }, method = RequestMethod.GET)
	public String getSessionList(Model model) {

		model.addAttribute("sessionList", sessionService.findAll());
		System.out.println("====" + sessionService.findAll());
		return "sessionView";
	}

}
