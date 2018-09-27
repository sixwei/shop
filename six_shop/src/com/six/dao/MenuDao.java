package com.six.dao;

import java.util.List;

import com.six.entity.menu.Area;
import com.six.entity.menu.City;
import com.six.entity.menu.Province;

public interface MenuDao {
	
	public List<Province>findAllProvince();
	
	
	public List<City> findAllCityByProvinceid(String provinceid);
	
	public List<Area> findAllAreaByCityid(String cityid);

}
