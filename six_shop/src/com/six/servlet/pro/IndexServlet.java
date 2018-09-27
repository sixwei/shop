package com.six.servlet.pro;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.six.dao.FireproDao;
import com.six.dao.impl.FireproDaoImpl;
import com.six.dao.impl.OrderDaoImpl;
import com.six.dao.impl.ProductDaoImplement;
import com.six.dao.impl.UserDaoImplement;
import com.six.entity.Cart;
import com.six.entity.CartItem;
import com.six.entity.Firepro;
import com.six.entity.Product;
import com.six.entity.SalesOrder;
import com.six.entity.User;
import com.six.utils.ServletUtil;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet(name = "IndexServlet", urlPatterns = { "*.pro" })
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
         String path = ServletUtil.getPath(request,response);
		
		ProductDaoImplement daoPro = new ProductDaoImplement();
		
		OrderDaoImpl orderdao= new OrderDaoImpl();
		
		UserDaoImplement userDao = new UserDaoImplement();
		
		FireproDao firedao = new FireproDaoImpl();
		
		if("/index".equals(path)) {
			//最新的产品的列表
			List<Product> lastProduct1 = daoPro.lastProduct(1, 4);
			List<Product> lastProduct2 = daoPro.lastProduct(2, 4);
			
			request.setAttribute("lastProduct1", lastProduct1);
			request.setAttribute("lastProduct2", lastProduct2);
			
			//最火的产品
			
			List<Firepro> firepro = firedao.findAll();
			
			request.setAttribute("firepro", firepro);
			
			
			
			//后面的forword是干什么用的
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}else if("/view".equals(path)) {
			
			//对于推荐商品的设计思路
			//这里暂时使用价格最高的作为推荐商品
			
			int id = Integer.parseInt(request.getParameter("id"));
			
		     Product product = daoPro.recommendProduct(id);
			
			request.setAttribute("product", product);
			
			
			//重定向
			request.getRequestDispatcher("view.jsp").forward(request, response);
			
		}else if("/toCart".equals(path)) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			int qty = Integer.parseInt(request.getParameter("qty"));
			
			HttpSession session = request.getSession();
			User user = (User)session.getAttribute("user");
			if(user==null) {
				response.sendRedirect("login.jsp");
			}else {
				ProductDaoImplement dao = new ProductDaoImplement();
				Product product = dao.findById(id);
				
				Cart cart = (Cart)session.getAttribute("cart");
				if(cart==null) {
					cart = new Cart();
				}
				CartItem item = new CartItem();
				item.setP(product);
				item.setQty(qty);
				
				cart.add(item);
				
				
				session.setAttribute("cart", cart);
				
				System.out.println(cart);
				
				
				request.getRequestDispatcher("cart.jsp").forward(request, response);
			}
			
			
			
		}else if("/order".equals(path)) {
			
			
			HttpSession session = request.getSession();
			Cart cart = (Cart)session.getAttribute("cart");
			
			User user = (User)session.getAttribute("user");
			
			SalesOrder order= new SalesOrder();
			order.setCart(cart);
			order.setUser(user);
			order.setStatus(0);
			
			orderdao.add(order);
			
			response.sendRedirect("order.jsp");
			
		}else if("/register".equals(path)) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			User user = userDao.findByName(username);
			
			System.out.println(user);
			System.out.println("-------");
			if(user!=null&&user.getPassword().equals(password)) {
				
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				
				//request.getRequestDispatcher("index.jsp").forward(request, response);
				response.sendRedirect("index.pro");
			}
			
		}else if("/firepro".equals(path)) {
			
			
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
