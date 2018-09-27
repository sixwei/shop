package com.six.servlet.pro;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.dao.MenuDao;
import com.six.dao.impl.MenuDaoOImpl;
import com.six.entity.menu.Area;
import com.six.entity.menu.City;
import com.six.entity.menu.Province;
import com.six.utils.ServletUtil;

import net.sf.json.JSONArray;


@WebServlet(urlPatterns="*.menu")
public class MenuServlet extends HttpServlet {

	
	private static final long serialVersionUID = 6906922197698887334L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String path = ServletUtil.getPath(request, response);
		
		
		
		MenuDao menudao = new MenuDaoOImpl();
		
		if("/province".equals(path)) {
		   List<Province> listpro = menudao.findAllProvince();
		   
		   JSONArray provincesArray = JSONArray.fromObject(listpro);
		   
		   System.out.println("province this is good");
		   
		   String provinces = provincesArray.toString();
		   
		   response.getWriter().println(provinces);
		   
		}else if("/city".equals(path)){
			String provinceid = (String)request.getParameter("provinceid");
			
			System.out.println(provinceid);
			
			System.out.println("city function");
			
			List<City> citys = menudao.findAllCityByProvinceid(provinceid);
			System.out.println(citys);
			
			JSONArray cityarray = JSONArray.fromObject(citys);
			
			String citysjs = cityarray.toString();
			
			response.getWriter().println(citysjs);
			
		}else if("/area".equals(path)) {
			
			String cityid = (String) request.getParameter("cityid");
			
			System.out.println(cityid);
			
			List<Area> areas = menudao.findAllAreaByCityid(cityid);
			System.out.println(areas);
			
			JSONArray areaarray = JSONArray.fromObject(areas);
			String areajs = areaarray.toString();
			
			
			response.getWriter().println(areajs);
			
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
