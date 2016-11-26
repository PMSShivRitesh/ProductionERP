package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.bean.DChallanModel;
import com.productionapp.dao.DchallanDao;
import com.productionapp.model.DchallanDetail;

@Service("Dchallanserviceimpl")
@Transactional
public class DchallanServiceImpl implements DchallanService {
	@Autowired
	DchallanDao dao;

	public int saveDchallanDetail(DChallanModel dchallan) {
		// TODO Auto-generated method stub
		return dao.saveDchallanDetail(dchallan);
	}

	public void saveDchallanItems(DChallanModel dchallan) {
		// TODO Auto-generated method stub
	     dao.saveDchallanItems(dchallan);	
	}

	public List getDchallanItemList(int dcchno) {
		// TODO Auto-generated method stub
		return dao.getDchallanItemList(dcchno);
	}

}
