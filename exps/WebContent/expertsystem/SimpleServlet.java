package com.expertsystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet("/SimpleServlet")
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimpleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		int s=0;
		 resp.setContentType("text/html");
		 PrintWriter out=resp.getWriter();
		 String res=req.getParameter("ans1");
		 String res1=req.getParameter("ans2");
		 String res2=req.getParameter("ans3");
		 if(res.equals("intercomp"))
		 s=s+5;
		 if(res1.equals("no"))
		 s=s+5;
		 if(res2.equals("vbjs"))
		 s=s+5;
		 out.println("<html><body><p><center><h1><b>RESULT</b></h1><br><br><hr>"+s+"<hr><h2>Thanx for ur Participation"
		 		+ "</h2></center></p></body></html>");
		 out.close();
		 }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
