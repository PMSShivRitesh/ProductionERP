package com.productionapp.dao;

import java.util.List;

import com.productionapp.bean.SalesOrderModel;
import com.productionapp.model.SalesOrderDetail;

public interface SalesOrderDao {
	public int saveSalesOrderDetail(SalesOrderModel salesordermodel);
	public void saveSalesOrderItems(SalesOrderModel salesordermodel);
	public List getSalesOrderitems(int salesorderno);

}
