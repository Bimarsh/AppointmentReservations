package app.reservation.controller;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.reservation.model.Person;
import app.reservation.model.Session;
import app.reservation.model.UserRoles;
import app.reservation.service.PersonService;

@Controller
@RequestMapping("/persons")

public class PersonController {

	@Autowired
	private PersonService personService;

	@ModelAttribute("roles")
	public List<String> populateRoles(Model model) {

		return Stream.of(UserRoles.values()).map(Enum::name).collect(Collectors.toList());
	}

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("personsList", personService.findAll());
		return "personList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPerson(@ModelAttribute("person") Person person, Model model) {

		return "person";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute("person") Person person, BindingResult br, Model model) {
		
		Person p = new Person(); 
		p = personService.findByUserName(person.getUser().getUsername());
		if(p.getUser().getUsername() != null) {
			return "person";
		}
		
		
		personService.saveUser(person);
		return "redirect:/persons";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String get(@PathVariable int id, Model model) {

		model.addAttribute("persons", personService.findById((long) id));
		return "personDetail";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String updatePersonForm(@PathVariable Long id, @ModelAttribute("person") Person person, Model model) {

		model.addAttribute("mode", "EDIT_PERSON");
		model.addAttribute("personToUpdate", personService.findById(id));
		return "person";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePerson(@ModelAttribute("person") Person person, BindingResult br, Model model) {
		personService.saveUser(person);
		return "redirect:/persons";
	}

}
