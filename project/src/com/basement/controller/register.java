package com.basement.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basement.model.crud;
import com.basement.model.customer;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd;
		customer newcustomer = new customer();
		try{
		newcustomer.setFname(request.getParameter("fname"));
		newcustomer.setLname(request.getParameter("lname"));
		newcustomer.setEmail(request.getParameter("email"));
		String pass = request.getParameter("user_password1").toString();
		String cpass = request.getParameter("user_password2").toString();
		
		if (pass.equals(cpass)) 
		{
		
			newcustomer.setUser_password1(pass);
			crud c= new crud();
			if (c.sub(newcustomer))
			{
				request.setAttribute("status", true);
				request.setAttribute("message", "inserted sucessfully");
				request.setAttribute("newcustomer", new customer());
			}
			 else 
			 {
				 request.setAttribute("status", true);
					request.setAttribute("message", "not inserted");
				request.setAttribute("newcustomer", newcustomer);
		
			}
			}
			else{
				request.setAttribute("status", true);
				request.setAttribute("message", "password and comfirm password is incorrect");
				request.setAttribute("newcustomer", newcustomer);
				
			}}
		catch(Exception e)  {
		if(e.getMessage().contains("primary key"))
		{
			request.setAttribute("status", true);
			request.setAttribute("message", "email incorrect");
			request.setAttribute("newcustomer", newcustomer);
			System.err.println(e.getMessage());  
		}
		
		else {
			request.setAttribute("status", true);
			request.setAttribute("message", "sever error");
			request.setAttribute("newcustomer", newcustomer);
			System.err.println(e.getMessage()); 
		}
			
		}
		rd=request.getRequestDispatcher("views/index.jsp");
		rd.forward(request, response);
	}
}
