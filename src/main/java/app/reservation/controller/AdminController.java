package app.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import app.reservation.model.Person;
import app.reservation.model.Session;
import app.reservation.model.User;
import app.reservation.model.UserRoles;
import app.reservation.repository.PersonRepository;
import app.reservation.service.PersonService;
import app.reservation.service.SessionService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	PersonRepository repository;
	
	@Autowired
	PersonService personService;
	
	@RequestMapping(value="/persons",method=RequestMethod.GET, produces="application/json")
	public String getPerson(@ModelAttribute("person")Person person)
	{
//		Person p= new Person("Bimarsh", "Neupane", "bmrsnpne@gmail.com");
//		User user= new User("bimarsh", "bimarsh");
//		
//		List<UserRoles> userRoles= new ArrayList<>();
//		userRoles.add(UserRoles.ROLE_ADMIN);
//		user.setUserRoles(userRoles);
//		user.setEnabled(true);
//		
//		p.setUser(user);
//		repository.save(p);
		
		return "personList";
		
		
	}
	@RequestMapping(value="/persons",method=RequestMethod.POST, produces="application/json")
	public String addPerson(@ModelAttribute("person")Person person)
	{
//		Person p= new Person("Bimarsh", "Neupane", "bmrsnpne@gmail.com");
//		User user= new User("bimarsh", "bimarsh");
//		
//		List<UserRoles> userRoles= new ArrayList<>();
//		userRoles.add(UserRoles.ROLE_ADMIN);
//		user.setUserRoles(userRoles);
//		user.setEnabled(true);
//		
//		p.setUser(user);
//		repository.save(p);
		
		personService.saveUser(person);
		
		return "redirect:/admin/person";
		
		
	}
	
	
	@RequestMapping(value="/createSession", method=RequestMethod.POST)
	public void createSession(@ModelAttribute("session")Session session)
	{
		
		
	}
	
	

}
