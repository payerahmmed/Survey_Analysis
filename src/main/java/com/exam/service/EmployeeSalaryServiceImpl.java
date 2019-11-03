package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.EmployeeSalaryDao;
import com.exam.model.EmployeeSalary;

@Service
@Transactional
public class EmployeeSalaryServiceImpl {
	
	@Autowired
	EmployeeSalaryDao employeeSalaryDao;
	public EmployeeSalary save(EmployeeSalary entity) {		
		return employeeSalaryDao.save(entity);
	}
	

	public EmployeeSalary getById(long id) {
		return employeeSalaryDao.getById(id);
	}

	
	public List<EmployeeSalary> getAll() {
		return employeeSalaryDao.getAll();
	}
	
	public EmployeeSalary update(EmployeeSalary entity) {		
		return employeeSalaryDao.update(entity);
	}
	
	public boolean delete(long id) {
		return employeeSalaryDao.delete(id);
	}
}
