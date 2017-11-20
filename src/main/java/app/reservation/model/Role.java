package app.reservation.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Role {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id ;
	private UserRoles role;
	public UserRoles getRole() {
		return role;
	}
	public void setRole(UserRoles role) {
		this.role = role;
	}
	

}
