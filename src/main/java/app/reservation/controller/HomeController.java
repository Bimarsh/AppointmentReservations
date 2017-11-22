package app.reservation.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.reservation.model.Person;
import app.reservation.model.User;
import app.reservation.model.UserRoles;
import app.reservation.repository.UserRepository;
import app.reservation.security.CustomUserDetail;
import app.reservation.service.PersonService;

@Controller
public class HomeController {
	
	@Autowired
	private PersonService personService;
	
	@Autowired
	private UserRepository userRepoository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexPage() {
		
		return "login";
		
	}
	

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(HttpSession session) {
		Authentication authority=SecurityContextHolder.getContext().getAuthentication();
		String name= authority.getName();
		System.out.println("all the names........................"+name);
		User user = userRepoository.findByUsername(name);
		session.setAttribute("user", user);
		return "sessionList";
		
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String getSignup(@ModelAttribute("person")Person person)
	{
		return "signup";
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public String signup(@ModelAttribute("person")Person person)
	{
		User user= person.getUser();
		List<UserRoles> userRoles= new ArrayList<>();
		userRoles.add(UserRoles.ROLE_CUSTOMER);
		user.setUserRoles(userRoles);
		user.setEnabled(true);
		person.setUser(user);
		personService.saveUser(person);
		return "redirect:/";
	}
	
	
	
}
