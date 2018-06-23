package com.knowuhub.theCalculator;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class MentalAge extends HttpServlet{
    private Connection cn;
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		ServletContext ctx=config.getServletContext();
		String driver =ctx.getInitParameter("driver");
		String url =ctx.getInitParameter("url");
		String user=ctx.getInitParameter("user");
		String pwd=ctx.getInitParameter("pwd");
		try {
			//Class.forName(driver);
			//cn=DriverManager.getConnection(url,user,pwd);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			  cn=DriverManager.getConnection("jdbc:mysql://localhost/calculator","root","12345");
			PreparedStatement ps;
			String name=request.getParameter("name");
			int totalCount=Integer.parseInt(request.getParameter("countTotal"));
			ps=cn.prepareStatement("insert into mentalage values(?,?)");
			ps.setString(1, name);
			ps.setInt(2, totalCount);
			ps.executeUpdate();
			
			if(totalCount>=350 && totalCount<=400)
			{
				response.sendRedirect("mentalAge4to9.html");
				//System.out.println("age 4-9");
			}
			else if(totalCount>=300 && totalCount<=340)
			{
				response.sendRedirect("mentalAge10to16.html");
			}
			else if(totalCount>=250 && totalCount<=290)
			{
				response.sendRedirect("mentalAge17to21.html");
			}
			else if(totalCount>=200 && totalCount<=240)
			{
				response.sendRedirect("mentalAge22to29.html");
			}
			else if(totalCount>=150 && totalCount<=190)
			{
				response.sendRedirect("mentalAge30to55.html");
			}
			else if(totalCount>=100 && totalCount<=140)
			{
				response.sendRedirect("mentalAge55+.html");
			}
			cn.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
}
