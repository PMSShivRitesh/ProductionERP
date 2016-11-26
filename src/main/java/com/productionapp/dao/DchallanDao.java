package com.productionapp.dao;

import java.util.List;

import com.productionapp.bean.DChallanModel;
import com.productionapp.model.DchallanDetail;

public interface DchallanDao {
	public int saveDchallanDetail(DChallanModel dchallan);
	public void saveDchallanItems(DChallanModel dchallan);
	public List getDchallanItemList(int dcchno);

}
