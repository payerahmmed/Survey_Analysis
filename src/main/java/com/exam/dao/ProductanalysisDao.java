package com.exam.dao;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.Productanalysis;

@Repository
public class ProductanalysisDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public Productanalysis save(Productanalysis entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public Productanalysis getById(Long id) {
		try {
			Productanalysis entity = sessionFactory.getCurrentSession().get(Productanalysis.class, id);
			return entity;
		} catch (HibernateException e) {

			return null;
		}

	}

	public List<Productanalysis> getAll() {

		try {
			
			List<Productanalysis> entityList = (List<Productanalysis>) sessionFactory.getCurrentSession().createQuery("FROM Productanalysis").list();
			
			return entityList;
		} catch (HibernateException e) {
			return null;
		}
		
	}
	public Productanalysis update(Productanalysis entity) {
		try {
			sessionFactory.getCurrentSession().update(entity);
			return (entity) ;
		} catch (HibernateException e) {
			return null;
		}
	}
	
	public boolean delete(long id) {
		try {
			Productanalysis entity = sessionFactory.getCurrentSession().get(Productanalysis.class, id);
			sessionFactory.getCurrentSession().delete(entity);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}
	
	
	
	public List<Productanalysis> filterByDate(String firstDate, String lastDate, String selectValue) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date startDate = null;
		Date endDate = null;
		
		try {
			
			startDate = sdf.parse(firstDate);
			endDate = sdf.parse(lastDate);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Productanalysis where luxShop=:luxShop and createdDate BETWEEN :firstDate and :lastDate");
		query.setParameter("luxShop", selectValue);
		query.setParameter("firstDate", startDate);
		query.setParameter("lastDate", endDate);
		List<Productanalysis> list = query.list();
		return list;
	}	
	

}
