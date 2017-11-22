package app.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.reservation.model.Person;
import app.reservation.service.PersonService;

@Controller
public class PersonController {

	@Autowired
	private PersonService personService;

	@RequestMapping("/")
	public String redirectRoot() {
		return "redirect:/persons";
	}

	@RequestMapping(value = "/persons", method = RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("persons", personService.findAll());
		return "personList";
	}

	@RequestMapping(value = "/persons", method = RequestMethod.POST)
	public String add(Person person) {
		personService.saveUser(person);
		return "redirect:/persons";
	}

	@RequestMapping(value = "/persons/{id}", method = RequestMethod.GET)
	public String get(@PathVariable int id, Model model) {
		
		model.addAttribute("persons", personService.findById((long) id));
		return "personDetail";
	}

	@RequestMapping(value = "/persons/{id}", method = RequestMethod.POST)
	public String update(@PathVariable int id, Person person) {
		personService.updatePerson(person);
		return "redirect:/persons";
	}

	@RequestMapping(value = "/persons/delete", method = RequestMethod.POST)
	public String delete(int id) {
		personService.deletePerson((long) id);
		return "redirect:/persons";
	}

}
