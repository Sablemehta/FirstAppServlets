 package com.hexa.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TaxServlet
 */
public class TaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TaxServlet() {
        super();
        ServletContext ctx = getServletContext();
		System.out.println(ctx.getInitParameter("slogan"));
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("txtname");
		double income = Double.parseDouble(request.getParameter("txtincome"));
		
		double tax = 0;
		if(income > 1000000)
			tax = (500000 * 0.1) + (income - 1000000) * 0.15;
		else if(income > 500000)
			tax = (income - 500000) * 0.1;
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		ServletContext ctx = getServletContext();
		System.out.println(ctx.getInitParameter("slogan"));
		RequestDispatcher rd = request.getRequestDispatcher("Header.jsp");
		 
		out.println("<h2 align> Tax Calculation </h2>");
		out.println("<hr/>");
		out.println("<table cellpaddint = '10'  bgcolor = 'wheat' style = 'margin:0px auto'>");
		out.println("<tr><td> Name</td><td>"+ name + "</td></tr>");
		out.println("<tr><td> Annual Income</td><td>"+ income + "</td></tr>");
		out.println("<tr><td> Tax</td><td>"+ tax + "</td></tr>");
		out.println("</table>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
