package com.productionapp.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.bean.SalesOrderModel;
import com.productionapp.model.SalesOrderDetail;
import com.productionapp.model.SalesOrderItems;

@Repository("salesorderdaoimpl")
public class SalesOrderDaoImpl implements SalesOrderDao{
	@Autowired
	SessionFactory sessiofactory;
	private Logger loger=Logger.getLogger(SalesOrderDaoImpl.class);

	public int saveSalesOrderDetail(SalesOrderModel salesordermodel) {
		SalesOrderDetail salesorderdetail=new SalesOrderDetail();
		loger.info("Save Sales Order Detail");
		 salesorderdetail.setCustId(1);
		 salesorderdetail.setPoNo(salesorderdetail.getPoNo());
		 salesorderdetail.setPoDate(salesordermodel.getPoDate());
		 salesorderdetail.setbTotal(salesordermodel.getbTotal());
		 salesorderdetail.setCstAmt(salesordermodel.getCstAmt());
		 salesorderdetail.setExciseAmt(salesordermodel.getExciseAmt());
		 salesorderdetail.setNetAmt(salesordermodel.getNetAmt());
		 salesorderdetail.setServiceTaxAmt(salesordermodel.getServiceTaxAmt());
		 salesorderdetail.setVatAmt(salesordermodel.getVatAmt());
		sessiofactory.getCurrentSession().saveOrUpdate(salesorderdetail);
		return salesorderdetail.getSaleorderno();
	}
	
	public void saveSalesOrderItems(SalesOrderModel salesordermodel) {
		SalesOrderItems salesorderitems=new SalesOrderItems();
		loger.info("save sales order items");
		salesorderitems.setSaleorderno(Integer.parseInt(salesordermodel.getSaleorderno()));
		salesorderitems.setItemCode(salesordermodel.getItemCode());
		salesorderitems.setQty(salesordermodel.getQty());
		salesorderitems.setUnit(salesordermodel.getUnit());
		salesorderitems.setRate(salesordermodel.getRate());
		salesorderitems.setAmt(salesordermodel.getAmt());
		salesorderitems.setDilDate(salesorderitems.getDilDate());
		sessiofactory.getCurrentSession().saveOrUpdate(salesorderitems);
		
	}
	
	public List getSalesOrderitems(int salesorderno){
		return sessiofactory.getCurrentSession().createCriteria(SalesOrderItems.class).list();
	}

}
