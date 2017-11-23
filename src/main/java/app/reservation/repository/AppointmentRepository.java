package app.reservation.repository;

import java.util.Date;
import java.util.List;

import javax.persistence.TemporalType;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.Temporal;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import app.reservation.model.Appointment;

@Repository
public interface AppointmentRepository extends CrudRepository<Appointment, Long> {
	
	public List<Appointment> getAppointmentByPersonId(long id);
	@Query("select s from Appointment s where s.session.startDate = :date and s.session.startTime = :time")
    public List<Appointment> findSessionBefore36hours (@Param("date") @Temporal(TemporalType.DATE) Date date, @Param("time") @Temporal(TemporalType.TIME)Date time);

	public Appointment findAppointmentBySessionIdAndPersonId(Long sessionId, Long personId);
}
