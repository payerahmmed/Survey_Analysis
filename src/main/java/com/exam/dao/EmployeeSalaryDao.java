package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.EmployeeSalary;

@Repository
public class EmployeeSalaryDao {
	
	@Autowired
	SessionFactory sessionFactory;
	public EmployeeSalary save(EmployeeSalary entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public EmployeeSalary getById(Long id) {
		try {
			EmployeeSalary entity = sessionFactory.getCurrentSession().get(EmployeeSalary.class, id);
			return entity;
		} catch (HibernateException e) {

			return null;
		}

	}

	public List<EmployeeSalary> getAll() {

		try {
			
			List<EmployeeSalary> entityList = (List<EmployeeSalary>) sessionFactory.getCurrentSession().createQuery("FROM EmployeeSalary").list();
			
			return entityList;
		} catch (HibernateException e) {
			return null;
		}
		
	}
	public EmployeeSalary update(EmployeeSalary entity) {
		try {
			sessionFactory.getCurrentSession().update(entity);
			return (entity) ;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public boolean delete(long id) {
		try {
			EmployeeSalary entity = sessionFactory.getCurrentSession().get(EmployeeSalary.class, id);
			sessionFactory.getCurrentSession().delete(entity);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}
}
