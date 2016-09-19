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

import com.petworld.model.Supplier;

@Repository("supplierDao")
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Supplier supplier) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(supplier);
		tx.commit();
		Serializable spid = session.getIdentifier(supplier);
		session.close();
		return (Integer) spid;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List supplierList = session.createQuery("from Supplier").list();
		session.close();
		return supplierList;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Supplier getRowById(int spid) {
		Session session = sessionFactory.openSession();
		Supplier supplier = (Supplier) session.load(Supplier.class, spid);
		return supplier;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Supplier supplier) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(supplier);
		tx.commit();
		Serializable spid = session.getIdentifier(supplier);
		session.close();
		return (Integer) spid;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int spid) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Supplier supplier = (Supplier) session.load(Supplier.class, spid);
		session.delete(supplier);
		session.flush();
		tx.commit();
		Serializable ids = session.getIdentifier(supplier);
		session.close();
		return (Integer) ids;
	}
}