package app.reservation.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;



@Entity
public class Session implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8507125137384362146L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@NotNull(message="Required field")
	private Date startDate;


	@Temporal(TemporalType.TIME)
	@DateTimeFormat(pattern = "HH:mm:ss")
	private Date startTime;
	
	@NotNull
	@Range(min=10, max=30)
	private int duration;
	
	@Range(min=1, max=25)
	private Integer seat;
	@NotEmpty
	private String location;
	

	
	@Valid
	@OneToOne
	@JoinColumn(name = "counselor_id")
	private Person counselor;
	
	@OneToMany(mappedBy="session", cascade=CascadeType.ALL)
	private List<Appointment> listAppoitment;

	public Session() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Integer getDuration() {
		return duration;
	}

	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	public Integer getSeat() {
		return seat;
	}

	public void setSeat(Integer seat) {
		this.seat = seat;
	}

	

	public Person getCounselor() {
		return counselor;
	}

	public void setCounselor(Person counselor) {
		this.counselor = counselor;
	}

	
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	@Override
	public String toString() {
		return "Session [id=" + id + ", startDate=" + startDate + ", startTime=" + startTime + ", duration=" + duration
				+ ", seat=" + seat + ", location=" + location + ", counselor=" + counselor + "]";
	}

	

	

}
