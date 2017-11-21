package app.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import app.reservation.model.Person;
import app.reservation.model.User;
import app.reservation.model.UserRoles;
import app.reservation.repository.PersonRepository;

@Controller
public class AdminController {
	
	@Autowired
	PersonRepository repository;
	
	@RequestMapping(value="/person",method=RequestMethod.GET, produces="application/json")
	public @ResponseBody Person addPerson()
	{
		Person p= new Person("Bimarsh", "Neupane", "bmrsnpne@gmail.com");
		User user= new User("bimarsh", "bimarsh");
		
		List<UserRoles> userRoles= new ArrayList<>();
		userRoles.add(UserRoles.ROLE_ADMIN);
		user.setUserRoles(userRoles);
		user.setEnabled(true);
		
		p.setUser(user);
		repository.save(p);
		
		return p;
	}
	
	

}
