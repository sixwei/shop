package com.six.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.dao.impl.AdminDaoImplement;
import com.six.entity.Admin;
import com.six.utils.ServletUtil;


@WebServlet(name="AdminServlet",urlPatterns="*.do")
public class AdminServlet extends HttpServlet {
	
	
	/**
	 * 
	 * 这是干什么的
	 * 
	 */
	private static final long serialVersionUID = 7995296469087956807L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ServletUtil.setEncoding(request, response);
		
		
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		
		AdminDaoImplement dao = new AdminDaoImplement();
		
		
		if("/list".equals(path)) {
			List<Admin> admins = dao.findAll();
			
			request.setAttribute("admins", admins);
			RequestDispatcher requ = request.getRequestDispatcher("admins.jsp");
			
			requ.forward(request, response);
		}else if("/add".equals(path)) {
			
			String aname = request.getParameter("aname");
			String apwd = request.getParameter("apwd");
			
			dao.add(aname, apwd);
			
			response.sendRedirect("list.do");
		}else if("/check".equals(path)){
		
			String aname = request.getParameter("aname");
			String apwd = request.getParameter("apwd");
			
			Admin admin = dao.checkAdmin(aname);
			
			if(admin!=null&& admin.getApwd().equals(apwd)) {
				response.sendRedirect("index.html");
			}else {
				response.sendRedirect("login.jsp");
			}
			
			
		}else {
			response.sendRedirect("error.jsp");
		}
		
		
		
		
	}

}
