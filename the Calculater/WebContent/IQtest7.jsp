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
	pageContext.setAttribute("answer6", answer,PageContext.SESSION_SCOPE);
}
else if(selectedOption.equals("optionB"))
{
	count=0;
	answer="Wrong";
	pageContext.setAttribute("answer6", answer,PageContext.SESSION_SCOPE);
}
else if(selectedOption.equals("optionC"))
{
	count=0;
	answer="Wrong";
	pageContext.setAttribute("answer6", answer,PageContext.SESSION_SCOPE);
}
else if(selectedOption.equals("optionD"))
{
	count=0;
	answer="Wrong";
	pageContext.setAttribute("answer6", answer,PageContext.SESSION_SCOPE);
}
else if(selectedOption.equals("optionE"))
{
	count=1;
	answer="Right";
	pageContext.setAttribute("answer6", answer,PageContext.SESSION_SCOPE);
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
							   <p style="font-size:30px;">Question 7</p>
						   </div>
               <hr class="line">
               <div class="text-center">
							  	<p class="qtxt">Which one of the following is least like the others</p>
               </div>
							 <hr class="line">
              <div class="form-group">
								<form class="" action="IQtest8.jsp">
	 							<button type="submit"  class="form-control  btn-outline-dark btnId" value="optionA" name="option">Poem</button><br />
	 							 <button type="submit" class="form-control btn-outline-dark btnId" value="optionB" name="option">Novel</button><br />
	 							 <button type="submit"  class="form-control  btn-outline-dark btnId" value="optionC" name="option">Painting</button><br />
	 							 <button type="submit" class="form-control btn-outline-dark btnId" value="optionD" name="option">Statue</button><br />
	 							 <button type="submit"  class="form-control btn-outline-dark btnId" value="optionE"  name="option">Flower</button>
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
