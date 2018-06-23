<!DOCTYPE HTML>
<html lang="en-US">
<%!
String selectedOption;
int count;
int currentCount;
int totalCount;
%>
<%
currentCount=(Integer)pageContext.getAttribute("totalCount",PageContext.SESSION_SCOPE);
selectedOption=request.getParameter("option");
if(selectedOption.equals("optionA"))
{
    count=40;
	//System.out.println("Selected A");	
}
else if(selectedOption.equals("optionB"))
{
	count=50;
//System.out.println("Selected b");	
}
else if(selectedOption.equals("optionC"))
{
	count=30;
//System.out.println("Selected C");	
}
else if(selectedOption.equals("optionD"))
{
	count=10;
//System.out.println("Selected D");	
}
else if(selectedOption.equals("optionE"))
{
	count=20;
//System.out.println("Selected D");	
}
totalCount=count+currentCount;
pageContext.setAttribute("totalCount", totalCount,PageContext.SESSION_SCOPE);
%>
<head>
	<meta charset="utf-8">
	<title>the Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<link rel="stylesheet" href="Editmarry/marry.css" />
</head>
<body>

   	 <div class="modal-dialog modal-lg">
   	 	 <div class="modal-content" style="background-color:#29212100;">
   	 	 	  <div class="modal-body">
						   <div class="text-center">
							   <p style="font-size:30px;">Question 4</p>
						   </div>
               <hr class="line">
               <div class="text-center">
							  	<p class="qtxt">When do you want to get married?</p>
               </div>
							 <hr class="line">
              <div class="form-group">
								<form class="" action="marry5.jsp">
	 							 	 							 <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionA" name="option">Not for a while</button><br />
	 							 <button type="submit" class="form-control btn-outline-dark btnId" value="optionB" name="option">When I'm ready for something serious</button><br />
	 							 <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionC" name="option">As soon as possible</button><br />
	 							 <button type="submit" class="form-control btn-outline-dark btnId" value="optionD" name="option">When I find the one</button><br />
	 							 <button type="submit"  class="form-control btn-outline-dark btnId" value="optionE"  name="option">When the time feel right</button>
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
    <script src="Editmarry/marry.js" type="text/javascript"></script>
</body>
</html>
