package com.exam.dao;



import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.Registration;

@Repository
public class RegistrationDao {
	@Autowired
	SessionFactory sessionFactory;

	public Registration save(Registration entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}

	public Registration getById(Long id) {
		try {
			Registration entity = sessionFactory.getCurrentSession().get(Registration.class, id);
			return entity;
		} catch (HibernateException e) {

			return null;
		}

	}

	public List<Registration> getAll() {

		try {
			
			List<Registration> entityList = (List<Registration>) sessionFactory.getCurrentSession().createQuery("FROM Registration").list();
			
			return entityList;
		} catch (HibernateException e) {
			return null;
		}
		
	}
	public Registration update(Registration entity) {
		try {
			sessionFactory.getCurrentSession().update(entity);
			return (entity) ;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public boolean delete(long id) {
		try {
			Registration entity = sessionFactory.getCurrentSession().get(Registration.class, id);
			sessionFactory.getCurrentSession().delete(entity);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}
}
