package app.reservation.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import app.reservation.model.Session;

@Repository
public interface SessionRepository extends CrudRepository<Session, Long> {
	
}
