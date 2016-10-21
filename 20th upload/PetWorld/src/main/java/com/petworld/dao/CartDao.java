package com.petworld.dao;

import java.util.List;

import com.petworld.model.Cart;

public interface CartDao {
	public int insertRow(Cart cart);

	public List getList();

	public Cart getRowById(int cartid);

	public int updateRow(Cart cart);

	public int deleteRow(int cartid);
}