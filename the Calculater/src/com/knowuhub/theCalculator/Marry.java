package com.knowuhub.theCalculator;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class Marry extends HttpServlet{
    private Connection cn;
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		ServletContext ctx=config.getServletContext();
		String driver =ctx.getInitParameter("driver");
		String url =ctx.getInitParameter("url");
		String user=ctx.getInitParameter("user");
		String pwd=ctx.getInitParameter("pwd");
		try {
			Class.forName(driver);
			cn=DriverManager.getConnection(url,user,pwd);
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
			ps=cn.prepareStatement("insert into marry values(?,?)");
			ps.setString(1, name);
			ps.setInt(2, totalCount);
			ps.executeUpdate();
			
			if(totalCount>=100 && totalCount<=160)
			{
				response.sendRedirect("marryResult1.html");
				//System.out.println("Rich Hottie");
			}
			else if(totalCount>=170 && totalCount<=250)
			{
				response.sendRedirect("marryResult2.html");

				//	System.out.println("Famous");
			}
			else if(totalCount>=260 && totalCount<=330)
			{
				response.sendRedirect("marryResult3.html");

//				System.out.println("Old Crush");
			}
			else if(totalCount>=340 && totalCount<=420)
			{
				response.sendRedirect("marryResult4.html");
//			System.out.println("Best Friend");
			}
			else if(totalCount>=430 && totalCount<=500)
			{
				response.sendRedirect("marryResult5.html");
//				System.out.println("SoulMate");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		  finally {
			  try {
				cn.close();
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		  }
	}
}
