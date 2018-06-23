<!DOCTYPE HTML>
<%!
String selectedOption;
int count;
int currentCount;
int totalCount;
int test;
%>
<%
currentCount=(Integer)pageContext.getAttribute("totalCount",PageContext.SESSION_SCOPE);
selectedOption=request.getParameter("option");
if(selectedOption.equals("optionA"))
{
	count=20;
//System.out.println("Selected A");	
}
else if(selectedOption.equals("optionB"))
{
	count=40;
//System.out.println("Selected b");	
}
else if(selectedOption.equals("optionC"))
{
	count=10;
//System.out.println("Selected C");	
}
else if(selectedOption.equals("optionD"))
{
	count=30;
//System.out.println("Selected D");	
}
totalCount=count+currentCount;

pageContext.setAttribute("totalCount", totalCount,PageContext.SESSION_SCOPE);
%>
<html lang="en-US">
<head>
	<meta charset="utf-8">
	<title>the Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<link rel="stylesheet" href="EditmentalAge/mentalAge.css" />
</head>
<body>

   	 <div class="modal-dialog modal-lg">
   	 	 <div class="modal-content" style="background-color:#29212100;">
   	 	 	  <div class="modal-body">
						   <div class="text-center">
							   <p style="font-size:30px;">Question 10</p>
						   </div>
               <hr class="line">
               <div class="text-center">
							  	<p class="qtxt">What would your ideal holiday/vacation consist of?</p>
               </div>
							 <hr class="line">
              <div class="form-group">
								<form class="" action="mentalAgeCalculate.jsp">
	 							 <div class="row"> 
	 							  <div class="col-sm-6">
	 							   <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionA" name="option">Going to theme park,Disneyland</button><br>
	 							   <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionB" name="option">Beach;Hawaii,Spain,etc</button>
	 							  </div>
	 							  
	 							  <div class="col-sm-6 margin"  > 
	 							  <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionC" name="option">Touring;New York,Italy,etc</button><br>
	 							  <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionD" name="option">Experiencing new cultures</button>
	 							  </div>
	 							</div>
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
    <script src="EditmentalAge/mentalAge.js" type="text/javascript"></script>
</body>
</html>
