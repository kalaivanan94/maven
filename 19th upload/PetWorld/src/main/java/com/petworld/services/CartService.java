package com.petworld.services;

import java.util.List;

import com.petworld.model.Cart;

public interface CartService {
	public int insertRow(Cart cart);

	public List getList();

	public Cart getRowById(int cartid);

	public int updateRow(Cart cart);

	public int deleteRow(int cartid);
}
