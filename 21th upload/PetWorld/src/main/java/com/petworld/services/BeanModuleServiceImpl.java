package com.petworld.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.petworld.bean.BeanModule;
import com.petworld.dao.BeanModuleDao;

@Service("beanModuleService")
public class BeanModuleServiceImpl implements BeanModuleService {
	@Autowired
	BeanModuleDao beanModuleDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(BeanModule use) {
		return beanModuleDao.insertRow(use);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return beanModuleDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public BeanModule getRowById(int id) {
		return beanModuleDao.getRowById(id);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(BeanModule use) {
		return beanModuleDao.updateRow(use);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int id) {
		return beanModuleDao.deleteRow(id);
	}
}