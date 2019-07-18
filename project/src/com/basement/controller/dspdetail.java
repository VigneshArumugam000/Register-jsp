package com.basement.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basement.model.crud;
import com.basement.model.customer;

/**
 * Servlet implementation class dspdetail
 */
@WebServlet("/dspdetail")
public class dspdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dspdetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	crud c=new crud();
	try {
		ArrayList<customer> newList=c.SelectAllcustomer();
		request.setAttribute("cuslist", newList);
		RequestDispatcher rd=request.getRequestDispatcher("views/dspdetail.jsp");
		rd.forward(request, response);
		
		
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
