package com.productionapp.controler;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.bean.SalesOrderModel;
import com.productionapp.model.SalesOrderDetail;
import com.productionapp.model.SalesOrderItems;
import com.productionapp.service.CustomerDetailService;
import com.productionapp.service.SalesOrderService;

@RestController
public class SalesOrderControler {
	@Autowired
	SalesOrderService salesorderservice;

	@Autowired
	CustomerDetailService custservice;
	
	private Logger loger=Logger.getLogger(SalesOrderControler.class);
	
	@RequestMapping("/salesorderhome")
	public ModelAndView getSalesOrderEntryForm(){
		ModelAndView model=new ModelAndView("/Sales/salesorderhome");
		return model;
	}
	
	@RequestMapping("/savesalesOrderDetail")
	public ModelAndView savesalesOrderDetail(@ModelAttribute(value="salesordermodel")SalesOrderModel salesordermodel){
		ModelAndView model=new ModelAndView("/Sales/salesorderhome");
		loger.info("Save Sales Order");
		int custId=custservice.getCustId(salesordermodel.getCustName());
		salesordermodel.setCustId(custId);
		if(salesordermodel.getSaleorderno().equals("")){
			salesordermodel.setSaleorderno(Integer.toString(salesorderservice.saveSalesOrderDetail(salesordermodel)));
		}
	
		salesorderservice.saveSalesOrderItems(salesordermodel);
		model.addObject("saleorderno",salesordermodel.getSaleorderno());
		List<SalesOrderItems>salesorderitemlst=salesorderservice.getSalesOrderitems(Integer.parseInt(salesordermodel.getSaleorderno()));
		model.addObject("salesorderitemlst",salesorderitemlst);
		
		return model;
	}


}
