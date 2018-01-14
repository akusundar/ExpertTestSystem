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
	
		public void doPost(HttpServletRequest req,HttpServletResponse resp) throws
		ServletException,IOException
		{
		 int s=0;
		 resp.setContentType("text/html");
		 PrintWriter out=resp.getWriter();
		 String res=req.getParameter("ans1");
		if(res.equals("class"))
		 s=s+1;
		 res=req.getParameter("ans2");
		 if(res.equals("all"))
		 s=s+1;
		 res=req.getParameter("ans3");
		 if(res.equals("c"))
		 s=s+1;
		 res=req.getParameter("ans4");
		 if(res.equals("e"))
		 s=s+1;
		 res=req.getParameter("ans5");
		 if(res.equals("dov"))
		 s=s+1;
		 
		 out.println("<html>"
		 		+ "<body>"
		 		+ "<p><center><h1><b>RESULT</b></h1>"
		 		+ "<br><br><hr>"+s+"<hr><h2>Thank you for Participating!"
		 		+ "<a href= \"http://localhost:8080/exps/DBN.jsp\">Click here to retry </a>"
		 		+ "</h2></center></p></body></html>");
		 out.close();
		}
		}
