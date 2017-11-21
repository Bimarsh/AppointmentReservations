package app.reservation.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.reservation.model.Session;

@Repository
public interface SessionRepository extends CrudRepository<Session, Long> {

}
