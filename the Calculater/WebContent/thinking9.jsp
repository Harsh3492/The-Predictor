<!DOCTYPE HTML>
<html lang="en-US">
<%! 
  int count;
  String selectedOption;
  int countTotal;
  int currentTotal;
%>
<%
currentTotal=(Integer)pageContext.getAttribute("countTotal",PageContext.SESSION_SCOPE);
selectedOption=request.getParameter("option");
if(selectedOption.equals("option1"))
{
	count=0;
	//System.out.println("value is 1");
}
else if(selectedOption.equals("option2"))
{
	count=20;
	//System.out.println("value is 2");
}
else if(selectedOption.equals("option3"))
{
	count=10;
	//System.out.println("value is 3");
}
countTotal=currentTotal+count;
pageContext.setAttribute("countTotal", countTotal,PageContext.SESSION_SCOPE);
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
							   <p style="font-size:30px;">Question 9</p>
						   </div>
               <hr class="line">
               <div class="text-center">
							  	<p class="qtxt">Do you see the glass as half empty of half full?</p>
               </div>
							 <hr class="line">
              <div class="form-group">
								<form class="" action="thinking10.jsp">
	 							 <button type="submit"  class="form-control  btn-outline-dark btnId " value="option1"  name="option">It doesn't matter</button><br />
	 							 <button type="submit" class="form-control btn-outline-dark btnId" value="option2"  name="option">Half empty</button><br />
	 							 <button type="submit"  class="form-control btn-outline-dark btnId" value="option3"  name="option">Half full</button>
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
