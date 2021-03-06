package com.productionapp.service;

import java.util.List;

import com.productionapp.model.SupplierDetail;

public interface SupplierService {
	public boolean saveSupplierDetail(SupplierDetail suppobj);
	public int getSupplierId(String suppname);
	public boolean checkSuppNameExist(String suppname);
	public List<String> suppNameAutocompleter(String term);
	public SupplierDetail getsupplierdetail(int suppId);
	public boolean updateSupplierDetail(SupplierDetail suppobj);
	public List getSuppList();

}
