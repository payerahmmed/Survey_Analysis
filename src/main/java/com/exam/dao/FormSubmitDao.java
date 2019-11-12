package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.FormSubmit;

@Repository
public class FormSubmitDao {
	
	@Autowired
	SessionFactory sessionFactory;
	public FormSubmit save(FormSubmit entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public FormSubmit getById(Long id) {
		try {
			FormSubmit entity = sessionFactory.getCurrentSession().get(FormSubmit.class, id);
			return entity;
		} catch (HibernateException e) {

			return null;
		}

	}

	public List<FormSubmit> getAll() {

		try {
			
			List<FormSubmit> entityList = (List<FormSubmit>) sessionFactory.getCurrentSession().createQuery("FROM FormSubmit").list();
			
			return entityList;
		} catch (HibernateException e) {
			return null;
		}
		
	}
	public FormSubmit update(FormSubmit entity) {
		try {
			sessionFactory.getCurrentSession().update(entity);
			return (entity) ;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public boolean delete(long id) {
		try {
			FormSubmit entity = sessionFactory.getCurrentSession().get(FormSubmit.class, id);
			sessionFactory.getCurrentSession().delete(entity);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}
	public List<FormSubmit> getAllbyName(String emName,String selectValue) {

		try {
			
			List<FormSubmit> entityList = (List<FormSubmit>) sessionFactory.getCurrentSession().createQuery("FROM FormSubmit where emName=:emName and selectValue=:selectValue")
					.setParameter("emName", emName)
					.setParameter("selectValue", selectValue).list();
			
			return entityList;
		} catch (HibernateException e) {
			return null;
		}
		
	}
}
