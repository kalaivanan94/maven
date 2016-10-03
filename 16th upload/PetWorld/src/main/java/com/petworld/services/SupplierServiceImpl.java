package com.petworld.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.petworld.dao.SupplierDao;
import com.petworld.model.Supplier;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {
	@Autowired
	SupplierDao supplierDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Supplier supplier) {
		return supplierDao.insertRow(supplier);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return supplierDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Supplier getRowById(int spid) {
		return supplierDao.getRowById(spid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Supplier supplier) {
		return supplierDao.updateRow(supplier);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int spid) {
		return supplierDao.deleteRow(spid);
	}
}
