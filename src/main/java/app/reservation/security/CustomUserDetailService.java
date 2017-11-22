package app.reservation.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import app.reservation.repository.UserRepository;

public class CustomUserDetailService implements UserDetailsService {
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String arg0) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		CustomUserDetail customUserDetail= new CustomUserDetail();
		customUserDetail.setUser(userRepository.findByUsername(arg0));
		
		
		return customUserDetail;
	}

}
