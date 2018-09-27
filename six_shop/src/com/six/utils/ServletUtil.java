package com.six.utils;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * servlet中的工具类
 * 对于乱码问题的处理
 * @author gzw
 *
 */

public class  ServletUtil {
	
	
	public static void setEncoding(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		response.setContentType("text/html;charset=gbk");
		
	}
	
	
	public static String getPath(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("gbk");
		response.setContentType("text/html;charset=gbk");
		
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		return path;
	}
	
	
	

}
