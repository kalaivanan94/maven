package com.petworld.dao;

import java.util.List;

import com.petworld.bean.BeanModule;

public interface BeanModuleDao {
	public int insertRow(BeanModule use);

	public List getList();

	public BeanModule getRowById(int id);

	public int updateRow(BeanModule use);

	public int deleteRow(int id);
}
