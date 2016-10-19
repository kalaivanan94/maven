package com.petworld.services;

import java.util.List;

import com.petworld.bean.BeanModule;

public interface BeanModuleService {
	public int insertRow(BeanModule p);

	public List getList();

	public BeanModule getRowById(int id);

	public int updateRow(BeanModule p);

	public int deleteRow(int id);
}
