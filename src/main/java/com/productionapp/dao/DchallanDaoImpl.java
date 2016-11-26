package com.productionapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.bean.DChallanModel;
import com.productionapp.model.DchallanDetail;
import com.productionapp.model.DchallanItems;

@Repository("dchallandaoimpl")
public class DchallanDaoImpl implements DchallanDao{
	@Autowired
	SessionFactory sessionfactory;
	private Logger loger=Logger.getLogger(DchallanDaoImpl.class);
	public int saveDchallanDetail(DChallanModel dchallan){
		loger.info("Save Dchallan Data");
		DchallanDetail dchallandetail=new DchallanDetail();
		dchallandetail.setCustId(dchallan.getCustId());
		dchallandetail.setDchallandate(dchallan.getDchallandate());
		dchallandetail.setPodate(dchallan.getPodate());
		dchallandetail.setDchallantype(dchallan.getDchallantype());	
		dchallandetail.setDchallanstatus("Pending");
		dchallandetail.setPono(dchallan.getPono());
		loger.info("before dchallan no="+dchallandetail.getDchallanno());
		sessionfactory.getCurrentSession().saveOrUpdate(dchallandetail);
		loger.info("dchallan no="+dchallandetail.getDchallanno());
		return dchallandetail.getDchallanno();
	}
	
	public void saveDchallanItems(DChallanModel dchallan){
		loger.info("Save Delivery Challan Items"+dchallan.getDchallanno());
		DchallanItems challanitems=new DchallanItems();
		
		challanitems.setDchallanno(Integer.parseInt(dchallan.getDchallanno()));
		challanitems.setItemcode(dchallan.getItemcode());
		
		challanitems.setItemQty(dchallan.getItemQty());
		sessionfactory.getCurrentSession().saveOrUpdate(challanitems);
	}
	
	public List getDchallanItemList(int dcchno){
		return sessionfactory.getCurrentSession().createCriteria(DchallanItems.class).add(Restrictions.eq("dchallanno", dcchno)).list();
	}

}
