package app.reservation.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Future;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
public class Session {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	
	@Temporal(TemporalType.DATE)
	@Future
	private Date startDate;
	
	@Temporal(TemporalType.TIME )
	@DateTimeFormat(pattern = "HH:mm:ss")
	private Date startTime;
	
	private int duration;
	private Integer seat;
	
	private String location;
	
	
	@Transient
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL) 
	@JoinColumn(name="session-ID") 
	private Person counselor;

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
