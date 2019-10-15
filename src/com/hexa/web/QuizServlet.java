package com.hexa.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QuizForm
 */
public class QuizServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuizServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String ans1=request.getParameter("ques1");
	    String ans2=request.getParameter("ques2");
	    String ans3=request.getParameter("ques3");
	    String ans4=request.getParameter("ques4");
	    String ans5=request.getParameter("ques5");
	    String ans6=request.getParameter("ques6");
	    int totalCorrect = 0;
	    int totalQues = 6;
	    if(ans1 != null && Integer.parseInt(ans1) == 4) {
	    	totalCorrect++;
	    }
        if(ans1 != null && Integer.parseInt(ans2) == 2) {
        	totalCorrect++;
	    }
        if(ans1 != null && Integer.parseInt(ans3) == 1) {
        	totalCorrect++;
        }
        if(ans1 != null && Integer.parseInt(ans4) == 8) {
        	totalCorrect++;
        }
        if(ans1 != null && Integer.parseInt(ans5) == 4) {
        	totalCorrect++;
        }
        if(ans1 != null && Integer.parseInt(ans6) == 8) {
        	totalCorrect++;
        }
        String msg ="";
        int percent = (totalCorrect  * 100)/totalQues ;
        if(percent > 75) {
        	msg="Passed";
        }
        else {
        	msg="Failed.";
        }
        request.setAttribute("questions", totalQues);
        request.setAttribute("totalMarks", totalCorrect);
        request.setAttribute("percentage", percent);
	    request.setAttribute("message", msg);
	    
	    RequestDispatcher rd = request.getRequestDispatcher("Resultview.jsp");
	    rd.forward(request, response);
	}
}
