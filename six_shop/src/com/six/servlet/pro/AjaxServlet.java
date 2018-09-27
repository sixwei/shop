package com.six.servlet.pro;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.dao.impl.UserDaoImplement;
import com.six.entity.User;
import com.six.utils.ServletUtil;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("*.ajax")
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AjaxServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = ServletUtil.getPath(request, response);
		
		UserDaoImplement userDao = new UserDaoImplement();
		
		if("/register".equals(path)) {
			String username = request.getParameter("username");
			
			System.out.println("名字为："+username);
			
			
			User user = userDao.findByName(username);
			
	
			
			//利用ajax向前台传输数据   需要用printwrite
			
			PrintWriter out = response.getWriter();
			if(user==null) {
				out.println("可以进行注册");
			}else {
				out.print("用户名已存在");
			}
			
		}else if("/list".equals(path)){
			
			PrintWriter out = response.getWriter();
			
			List<User> users = userDao.findAll();
			System.out.println(users);
			
			JSONArray userarray = JSONArray.fromObject(users);
			
			String jsonuser = userarray.toString();
			System.out.println(jsonuser);
			
			out.println(jsonuser);
			
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
