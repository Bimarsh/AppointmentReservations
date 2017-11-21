package app.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.reservation.model.Session;
import app.reservation.repository.SessionRepository;

@Service
@Transactional
public class SessionServiceImpl implements SessionService {

	@Autowired
	private SessionRepository sessionRepository;

	@Override
	public void save(Session session) {
		sessionRepository.save(session);
		
	}

	@Override
	public void update(Session session) {
		sessionRepository.save(session);
		
	}

	@Override
	public List<Session> findAll() {
		

		return (List<Session>) sessionRepository.findAll();
	}

	@Override
	public Session findOne(Long id) {
		return sessionRepository.findOne(id);
	}

	@Override
	public void delete(Long id) {
		sessionRepository.delete(id);
		
	}
	

}
