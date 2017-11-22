package app.reservation.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import app.reservation.model.Session;

@Entity
public class Appointment {
	
	public Appointment() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Appointment(Session session, Person person) {
		super();
		this.session = session;
		this.person = person;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@ManyToOne()
	@JoinColumn(name="session_id")
	private Session session;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="person_id")
	private Person person;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Session getSession() {
		return session;
	}

	public void setSession(Session session) {
		this.session = session;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	@Override
	public String toString() {
		return "Appointment [id=" + id + ", Session=" + session + ", person=" + person + "]";
	}

}
