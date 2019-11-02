package com.exam.dao;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.EmployeeReg;

@Repository
public class EmployeeRegDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public EmployeeReg save(EmployeeReg entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}
}
