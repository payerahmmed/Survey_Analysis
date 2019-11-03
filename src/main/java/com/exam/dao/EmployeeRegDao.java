package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.EmployeeReg;
import com.exam.model.Registration;

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
	
	public EmployeeReg getById(Long id) {
		try {
			EmployeeReg entity = sessionFactory.getCurrentSession().get(EmployeeReg.class, id);
			return entity;
		} catch (HibernateException e) {

			return null;
		}

	}
	
	public List<EmployeeReg> getAll() {

		try {
			
			List<EmployeeReg> entityList = (List<EmployeeReg>) sessionFactory.getCurrentSession().createQuery("FROM EmployeeReg").list();
			
			return entityList;
		} catch (HibernateException e) {
			return null;
		}
		
	}
	
	public EmployeeReg update(EmployeeReg entity) {
		try {
			sessionFactory.getCurrentSession().update(entity);
			return (entity) ;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public boolean delete(long id) {
		try {
			EmployeeReg entity = sessionFactory.getCurrentSession().get(EmployeeReg.class, id);
			sessionFactory.getCurrentSession().delete(entity);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}
}
