<!DOCTYPE HTML>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%@ page import="java.security.*"%>

<html lang="en-US">
<%! 
  int count;
  String selectedOption;
  int countTotal;
%>
<%
selectedOption=request.getParameter("option");
if(selectedOption.equals("option1"))
{
	count=10;
}
else if(selectedOption.equals("option2"))
{
	count=20;
}
else if(selectedOption.equals("option3"))
{
	count=0;
}
countTotal=count;
//System.out.println("Value in " +countTotal);
pageContext.setAttribute("countTotal",countTotal,PageContext.SESSION_SCOPE);
%>
<head>
	<meta charset="utf-8">
	<title>the Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<link rel="stylesheet" href="Editthinking/thinking.css" />
</head>
<body>

   	 <div class="modal-dialog modal-lg">
   	 	 <div class="modal-content" style="background-color:#29212100;">
   	 	 	  <div class="modal-body">
						   <div class="text-center">
							   <p style="font-size:30px;">Question 2</p>
						   </div>
               <hr class="line">
               <div class="text-center">
							  	<p class="qtxt">What's your opinion on school?</p>
               </div>
							 <hr class="line">
              <div class="form-group">
								<form class="" action="thinking3.jsp">
	 							 <button type="submit"  class="form-control  btn-outline-dark btnId" value="option1"  name="option">It's important!</button><br />
	 							 <button type="submit" class="form-control btn-outline-dark btnId" value="option2"  name="option">I accept it,boring sometimes</button><br />
	 							 <button type="submit"  class="form-control btn-outline-dark btnId" value="option3" name="option">I guess we don't need it</button>
	 						 </form>
              </div>
						 </div>
					 <!----------------------------------End of modal----------->

   	 	 </div>
   	 </div>






	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
    <script src="Editthinking/thinking.js" type="text/javascript"></script>
</body>
</html>
