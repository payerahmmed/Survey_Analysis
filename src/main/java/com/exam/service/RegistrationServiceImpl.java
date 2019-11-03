package com.exam.service;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.RegistrationDao;
import com.exam.model.Registration;


@Service
@Transactional
public class RegistrationServiceImpl {
	@Autowired
	RegistrationDao registrationDao;
	
	public Registration save(Registration entity) {
		
		return registrationDao.save(entity);
	}	
	
	
	public Registration getById(long id) {
		return registrationDao.getById(id);
	}

	
	public List<Registration> getAll() {
		return registrationDao.getAll();
	}
	
	public Registration update(Registration entity) {		
		return registrationDao.update(entity);
	}
	
	public boolean delete(long id) {
		return registrationDao.delete(id);
	}
}
