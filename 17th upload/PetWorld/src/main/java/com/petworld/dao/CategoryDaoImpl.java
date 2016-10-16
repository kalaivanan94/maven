package com.petworld.dao;



import java.io.Serializable;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.petworld.model.Category;
@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao {
	
	@Autowired
	 private SessionFactory sessionFactory;

	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Category category) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(category);
		  tx.commit();
		  Serializable catid = session.getIdentifier(category);
		  session.close();
		  return (Integer) catid;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List getList() {
		Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  List categoryList = session.createQuery("from Category")
		    .list();
		  session.close();
		  return categoryList;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Category getRowById(int catid) {
		Session session = sessionFactory.openSession();
		  Category category = (Category) session.load(Category.class, catid);
		  return category;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Category category) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(category);
		  tx.commit();
		  Serializable catid = session.getIdentifier(category);
		  session.close();
		  return (Integer) catid;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int catid) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  Category category = (Category) session.load(Category.class, catid);
		  session.delete(category);
		  session.flush();
		  tx.commit();
		  Serializable ids = session.getIdentifier(category);
		  session.close();
		  return (Integer) ids;
	}
	
}
