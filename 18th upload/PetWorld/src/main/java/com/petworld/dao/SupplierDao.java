package com.petworld.dao;

import java.util.List;

import com.petworld.model.Supplier;


public interface SupplierDao {
	public int insertRow(Supplier supplier);

	public List getList();

	public Supplier getRowById(int spid);

	public int updateRow(Supplier supplier);

	public int deleteRow(int spid);
}
