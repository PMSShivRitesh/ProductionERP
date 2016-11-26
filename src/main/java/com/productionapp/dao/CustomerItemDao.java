package com.productionapp.dao;

import java.util.List;

import com.productionapp.model.CustomerItems;

public interface CustomerItemDao {
	public boolean allocateItem(CustomerItems custitem);
	public List getCustomerItems(int custId);
	public List<String> getCustomerItemCode(int custId);
	public List getCustItemRate(int custId,String itemCode);

}
