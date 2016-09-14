package com.petworld.dao;

import java.util.List;
import java.util.Locale.Category;

public interface CategoryDao {
	public int insertRow(Category category);

	public List getList();

	public Category getRowById(int catid);

	public int updateRow(Category category);

	public int deleteRow(int catid);
}
