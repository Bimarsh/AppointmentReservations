package app.reservation.service;

import java.util.Date;
import java.util.List;

import app.reservation.model.Session;

public interface SessionService {


	public void save(Session session);
	public void update(Session session);
	public List<Session> findAll();
	public Session findOne(Long id);
	public void delete(Long id);

}
