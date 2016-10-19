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

import com.petworld.model.Cart;

@Repository("cartDao")
public class CartDaoImpl implements CartDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Cart cart) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(cart);
		tx.commit();
		Serializable cartid = session.getIdentifier(cart);
		session.close();
		return (Integer) cartid;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List cartList = session.createQuery("from Cart").list();
		session.close();
		return cartList;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Cart getRowById(int cartid) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.load(Cart.class, cartid);
		return cart;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Cart cart) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(cart);
		tx.commit();
		Serializable cartid = session.getIdentifier(cart);
		session.close();
		return (Integer) cartid;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int cartid) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Cart cart = (Cart) session.load(Cart.class, cartid);
		session.delete(cart);
		session.flush();
		tx.commit();
		Serializable ids = session.getIdentifier(cart);
		session.close();
		return (Integer) ids;
	}
}
