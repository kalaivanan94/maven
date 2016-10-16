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

import com.petworld.bean.BeanModule;
import com.petworld.model.BeanRole;

@Repository("beanModuleDao")
public class BeanModuleDaoImpl implements BeanModuleDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(BeanModule p) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		p.setEnable(true);
		BeanRole r = new BeanRole();
		r.setRoleid(p.getUid());
		r.setRole_name("ROLE_USER");
		r.setRole_username(p.getName());
		session.saveOrUpdate(r);
		session.saveOrUpdate(p);
		tx.commit();
		Serializable id = session.getIdentifier(p);
		session.close();
		return (Integer) id;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List pList = session.createQuery("from BeanModule").list();
		session.close();
		return pList;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public BeanModule getRowById(int id) {
		Session session = sessionFactory.openSession();
		BeanModule p = (BeanModule) session.load(BeanModule.class, id);
		return p;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(BeanModule p) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(p);
		tx.commit();
		Serializable id = session.getIdentifier(p);
		session.close();
		return (Integer) id;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		BeanModule p = (BeanModule) session.load(BeanModule.class, id);
		session.delete(p);
		tx.commit();
		Serializable ids = session.getIdentifier(p);
		session.close();
		return (Integer) ids;
	}
}
