package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.FormSubmitDao;
import com.exam.model.FormSubmit;

@Service
@Transactional

public class FormSubmitServiceImpl {
	@Autowired
	FormSubmitDao formSubmitDao;
	public FormSubmit save(FormSubmit entity) {
		return formSubmitDao.save(entity);
	}
	

	public FormSubmit getById(long id) {
		return formSubmitDao.getById(id);
	}

	
	public List<FormSubmit> getAll() {
		return formSubmitDao.getAll();
	}
	
	public FormSubmit update(FormSubmit entity) {		
		return formSubmitDao.update(entity);
	}
	
	public boolean delete(long id) {
		return formSubmitDao.delete(id);
	}
	public List<FormSubmit> getAllbyName(String emName,String selectValue) {
		return formSubmitDao.getAllbyName(emName,selectValue);
	}
}
