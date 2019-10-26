package com.exam.service;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.ProductanalysisDao;
import com.exam.model.Productanalysis;

@Service
@Transactional
public class ProductanalysisServiceImpl {
	@Autowired
	ProductanalysisDao productanalysisDao;
	
	public Productanalysis save(Productanalysis entity) {
		return productanalysisDao.save(entity);
	}
	
	public Productanalysis getById(long id) {
		return productanalysisDao.getById(id);
	}

	
	public List<Productanalysis> getAll() {
		return productanalysisDao.getAll();
	}
	
	public Productanalysis update(Productanalysis entity) {		
		return productanalysisDao.update(entity);
	}
	
	public boolean delete(long id) {
		return productanalysisDao.delete(id);
	}
	
	public List<Productanalysis> filterByDate(String firstDate, String lastDate, String selectValue) {		
		return productanalysisDao.filterByDate(firstDate, lastDate, selectValue);
	}
	
}
