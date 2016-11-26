package com.productionapp.controler;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.bean.DChallanModel;
import com.productionapp.model.DchallanItems;
import com.productionapp.service.CustomerDetailService;
import com.productionapp.service.DchallanService;

@RestController
public class DChallanControler {
	private Logger loger=Logger.getLogger(DChallanControler.class);
	@Autowired
	DchallanService dchallanservice;
	@Autowired
	CustomerDetailService custservice;
	
	@RequestMapping("/dchallnhome")
	public ModelAndView getDchallanForm(){
		ModelAndView model =new ModelAndView("/Dchallan/dchallanhome");
		return model;
		
	}
	
	@RequestMapping("/saveDChallan")
	public ModelAndView saveDChallan(@ModelAttribute(value="dchallan")DChallanModel dchallan){
		loger.info("Save Dchallan"+dchallan.getDchallanno());
		ModelAndView model=new ModelAndView("/Dchallan/dchallanhome");
		int custId=custservice.getCustId(dchallan.getCustName());
		dchallan.setCustId(custId);
		if(dchallan.getDchallanno().equals("")){
			dchallan.setDchallanno(Integer.toString(dchallanservice.saveDchallanDetail(dchallan)));
		}
		dchallanservice.saveDchallanItems(dchallan);
        List<DchallanItems>lst=dchallanservice.getDchallanItemList(Integer.parseInt(dchallan.getDchallanno()));
		model.addObject("dchallanno",dchallan.getDchallanno());
		model.addObject("custName",dchallan.getCustName());
		model.addObject("dchallantype",dchallan.getDchallantype());
		model.addObject("podate",dchallan.getPodate());
		//model.addObject("pono",dchallan.getPono());
		model.addObject("lst",lst);
		return model;
	}

}
