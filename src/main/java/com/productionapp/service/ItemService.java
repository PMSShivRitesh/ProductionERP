package com.productionapp.service;

import java.util.List;

import com.productionapp.model.Item;

public interface ItemService {
	public boolean crateItem(Item item);
	public List getItemDetailList();
	public List<String>getItemCodeAutoComplete(String term);
	public List getItemCodeDetail(String itemCode);

}
