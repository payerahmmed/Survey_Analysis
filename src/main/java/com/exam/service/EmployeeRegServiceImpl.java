package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.EmployeeRegDao;
import com.exam.model.EmployeeReg;

@Service
@Transactional
public class EmployeeRegServiceImpl {
	
	@Autowired
	EmployeeRegDao employeeRegDao;
	public EmployeeReg save(EmployeeReg entity) {
		return employeeRegDao.save(entity);
	}
	public List<EmployeeReg> getAll() {
		return employeeRegDao.getAll();
	}
	
	public EmployeeReg getById(long id) {
		return employeeRegDao.getById(id);
	}
	
	public EmployeeReg update(EmployeeReg entity) {		
		return employeeRegDao.update(entity);
	}
	
	public boolean delete(long id) {
		return employeeRegDao.delete(id);
	}

}
