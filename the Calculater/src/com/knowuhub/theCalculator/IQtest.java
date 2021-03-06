package com.knowuhub.theCalculator;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
public class IQtest extends HttpServlet{
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
		//  Class.forName(driver);
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
		ps=cn.prepareStatement("insert into  iqtest values(?,?)");
	    ps.setString(1, name);
        ps.setInt(2, countTotal);	
        ps.executeUpdate();
        
        if(countTotal>=9 && countTotal<=10 )
        {
        	response.sendRedirect("IQtestresult1.jsp");
        }
        else if(countTotal>=7 && countTotal<=8 )
        {
        	response.sendRedirect("IQtestresult2.jsp");
        }
        else if(countTotal>=5 && countTotal<=6 )
        {
        	response.sendRedirect("IQtestresult3.jsp");
        }
        else  if(countTotal>=0 && countTotal<=4 )
        {
        	response.sendRedirect("IQtestresult4.jsp");
        }
        //response.sendRedirect("TrueorFalseResult.jsp");
        cn.close();
	  } catch (Exception e) {
		
		e.printStackTrace();
	  }
	  finally {
		  try {
			//cn.close();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	  }
	  
  }

}