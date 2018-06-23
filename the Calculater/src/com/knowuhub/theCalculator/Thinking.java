package com.knowuhub.theCalculator;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class Thinking extends HttpServlet{
  private Connection cn;
  public void init(ServletConfig config)throws ServletException
  {
	  super.init(config);
	  ServletContext ctx=config.getServletContext();
	  String driver=ctx.getInitParameter("driver");
	  String url=ctx.getInitParameter("url");
	  String user=ctx.getInitParameter("user");
	  String pwd=ctx.getInitParameter("pwd");
	  try {
		  //Class.forName(driver);
		  //cn=DriverManager.getConnection(url,user,pwd);
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
  }
  
  protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
  {  
	  
	  PreparedStatement ps=null;
	  ResultSet rs=null;
	  String name=request.getParameter("name");
	  int countTotal=Integer.parseInt(request.getParameter("countTotal"));
	  try {
		  Class.forName("com.mysql.jdbc.Driver");
		  cn=DriverManager.getConnection("jdbc:mysql://localhost/calculator","root","12345");
		ps=cn.prepareStatement("insert into thinking values(?,?)");
	    ps.setString(1, name);
        ps.setInt(2, countTotal);	
        ps.executeUpdate();
        
        if(countTotal>=0 && countTotal<=60)
        {
        	response.sendRedirect("thinkingNegative.html");
        	//System.out.println("Negative");
        }
        else if(countTotal>=70 && countTotal<=130)
        {
        	response.sendRedirect("thinkingBalance.html");
        	//System.out.println("Balance");
        }
        else if(countTotal>=140 && countTotal<=200)
        {
        	//System.out.println("Postive");
        	response.sendRedirect("thinkingPositive.html");
        }
        cn.close();
	  } catch (Exception e) {
		
		e.printStackTrace();
	  }
	  finally {
		  try {
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	  }
	  
  }

}
