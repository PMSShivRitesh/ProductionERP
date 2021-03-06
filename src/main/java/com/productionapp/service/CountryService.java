package com.productionapp.service;

import java.sql.SQLException;
import java.util.List;


import java.util.Map;

import com.productionapp.model.Country;

public interface CountryService {
	void saveCountry(Country mobj);
	List<Country> getCountryList();
	public boolean deleteCountry(Country mobj);
	public Map<String,String> getCountryListForDropdown();
	public boolean checkCountryExist(Country mobj);
	
}
