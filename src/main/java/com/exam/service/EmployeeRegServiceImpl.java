package com.exam.service;

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
	
}
