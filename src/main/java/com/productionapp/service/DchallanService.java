package com.productionapp.service;

import java.util.List;

import com.productionapp.bean.DChallanModel;
import com.productionapp.model.DchallanDetail;

public interface DchallanService {
	public int saveDchallanDetail(DChallanModel dchallan);
	public void saveDchallanItems(DChallanModel dchallan);
	public List getDchallanItemList(int dcchno);

}
