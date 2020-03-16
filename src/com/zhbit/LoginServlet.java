package com.zhbit;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

	public LoginServlet() {
		// TODO Auto-generated constructor stub
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}


	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");//防止中文乱码
		
		Users user = new Users();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		user.setUsername(username);
		user.setPassword(password);
		
		//把注册成功的用户对象保存在session对象中
		request.getSession().setAttribute("loginUser", user);
				
		//判断用户名是否合法
		if(user.getUsername().equals("admin")&&user.getPassword().equals("admin")){
			response.sendRedirect(request.getContextPath()+"/login_success2.jsp");
		}else{
			request.getRequestDispatcher("/login_failure.jsp").forward(request, response);
		}
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
