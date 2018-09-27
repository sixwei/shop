package com.six.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.six.dao.MenuDao;
import com.six.entity.menu.Area;
import com.six.entity.menu.City;
import com.six.entity.menu.Province;
import com.six.utils.DBUtil;

public class MenuDaoOImpl implements MenuDao {

	@Override
	public List<Province> findAllProvince() {
		
		Connection conn = null;
		PreparedStatement prep = null;
		String sql = "select p.id,p.provinceid,p.province from t_province p ";
		List<Province> listProvince = new ArrayList<>();
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn = DBUtil.getConnection();
			prep = DBUtil.getPreparedStatement(conn, sql);
			
			ResultSet res = prep.executeQuery();
			while(res.next()) {
				Province province = new Province(res.getInt("id"),res.getString("provinceid"),res.getString("province"));
			    listProvince.add(province);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listProvince;
		
	}

	@Override
	public List<City> findAllCityByProvinceid(String provinceid) {
		Connection conn = null;
		PreparedStatement prep = null;
		String sql = "select c.id,c.cityID,c.city,c.provinceid from t_city c where provinceid=?";
		List<City> listCity = new ArrayList<>();
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn = DBUtil.getConnection();
			prep = DBUtil.getPreparedStatement(conn, sql);
			prep.setString(1, provinceid);
			
			ResultSet res = prep.executeQuery();
			while(res.next()) {
				City city = new City(res.getInt("id"),res.getString("cityID"),res.getString("city"),res.getString("provinceid"));
				listCity.add(city);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listCity;
	}

	@Override
	public List<Area> findAllAreaByCityid(String cityid) {
		Connection conn = null;
		PreparedStatement prep = null;
		String sql = "select * from t_area where cityid =?";
		List<Area> listArea = new ArrayList<>();
		
		try {
			Class.forName(DBUtil.DRIVER_NAME);
			conn = DBUtil.getConnection();
			prep = DBUtil.getPreparedStatement(conn, sql);
			prep.setString(1, cityid);
			
			ResultSet res = prep.executeQuery();
			while(res.next()) {
				Area area = new Area(res.getInt("id"),res.getString("areaID"),res.getString("area"),res.getString("cityid"));
				listArea.add(area);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listArea;
	}

}
