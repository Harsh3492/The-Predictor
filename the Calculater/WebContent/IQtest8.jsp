<!DOCTYPE HTML>
<html lang="en-US">
<%!
String selectedOption;
int count;
int currentCount;
int totalCount;
String answer;
%>
<%
currentCount=(Integer)pageContext.getAttribute("totalCount",PageContext.SESSION_SCOPE);
selectedOption=request.getParameter("option");
if(selectedOption.equals("optionA"))
{
	count=0;
	answer="Wrong";
	pageContext.setAttribute("answer7", answer,PageContext.SESSION_SCOPE);
}
else if(selectedOption.equals("optionB"))
{
	count=0;
	answer="Wrong";
	pageContext.setAttribute("answer7", answer,PageContext.SESSION_SCOPE);
}
else if(selectedOption.equals("optionC"))
{
	count=0;
	answer="Wrong";
	pageContext.setAttribute("answer7", answer,PageContext.SESSION_SCOPE);	
}
else if(selectedOption.equals("optionD"))
{
	count=0;
	answer="Wrong";
	pageContext.setAttribute("answer7", answer,PageContext.SESSION_SCOPE);
}
else if(selectedOption.equals("optionE"))
{
	count=1;
	answer="Right";
	pageContext.setAttribute("answer7", answer,PageContext.SESSION_SCOPE);
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
	<link rel="stylesheet" href="EditIQtest/IQtest.css" />
</head>
<body>

   	 <div class="modal-dialog modal-lg">
   	 	 <div class="modal-content" style="background-color:#29212100;">
   	 	 	  <div class="modal-body">
						   <div class="text-center">
							   <p style="font-size:30px;">Question 8</p>
						   </div>
               <hr class="line">
               <div class="container-fluid">
					<div class="text-center">
					<p class="qtxt">Which of figures below the line of drawings best completes the series?</p>
					</div>
					<div class="row">
					  <div class="col-12">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b1.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b2.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b3.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b4.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b5.JPG">
					  </div>
					</div>		  	
               </div>
							 <hr class="line">
              <div class="form-group">
								<form class="" action="IQtest9.jsp">
	 							<div class="row"> 
	 							  <div class="col-sm-6">
	 							   <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionA" name="option"><img alt="image of color" class="img img-fluid rounded" src="img/c1.JPG"></button><br>
	 							   <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionB" name="option"><img alt="image of color" class="img img-fluid rounded"src="img/c2.JPG"></button>
	 							  </div>
	 							  
	 							  <div class="col-sm-6 margin"  > 
	 							  <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionC" name="option"><img alt="image of color" class="img img-fluid rounded" src="img/c3.JPG"></button><br>
	 							  <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionD" name="option"><img alt="image of color" class="img img-fluid rounded" src="img/c4.JPG"></button>
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
    <script src="EditIQtest/IQtest.js" type="text/javascript"></script>
</body>
</html>
