package com.hexa.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmiServlet
 */
public class EmiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      double amt = Double.parseDouble(request.getParameter("txtamt"));
	      int years = Integer.parseInt(request.getParameter("txtyears"));
	      double emi;
	      double compoundInterest = 0;
	      double rate = Double.parseDouble(request.getParameter("rate"));
	      compoundInterest = amt * Math.pow((1+rate), years);
	      compoundInterest = Math.round(compoundInterest * 100)/100;
	      emi = compoundInterest/(years*12);
	      emi = Math.round(emi * 100)/100;
	      
	      request.setAttribute("compint", compoundInterest);
	      request.setAttribute("emires", emi);
	      

	      
	      RequestDispatcher rd = request.getRequestDispatcher("Emiview.jsp");
	      rd.forward(request, response);
 	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
