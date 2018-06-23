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
	count=30;
//System.out.println("Selected b");	
}
else if(selectedOption.equals("optionC"))
{
	count=20;
//System.out.println("Selected C");	
}
else if(selectedOption.equals("optionD"))
{
	count=10;
//System.out.println("Selected D");	
}
totalCount=count+currentCount;

%>
<head>
	<meta charset="utf-8">
	<title>the Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<link rel="stylesheet" href="EditmentalAgeCalculate/mentalAgeCalculate.css" />
</head>
<body>

	<div class="container">
	    <div class="row justify-content-center text-center rowHeight">
	       <div class="col-sm-12 align-self-center">
	         
	         <button class="btn btn-outline-dark btn-lg" data-toggle="modal" data-target="#modal" ><img alt="calculator logo" class="calculatorImg" src="Calculater.png"><p class="btntxt">Calculate</p></button>
	       </div>
	    </div>
	</div>
      <!-- -----------Modal----------------- -->
          <div class="modal fade" id="modal" >
             <div class="modal-dialog  modalPosition" >
              <div class="modal-content" style="background-color:#2C2C2D;">
                <div class="modal-body" style="color:white;" >
                  <div class="text-center">
                        <h3>Thank You For Answering</h3><br><br>
                        
                        <form action="./mentalAge"name="formName" onsubmit="return validate()"   method="">
                        <input type="text" class="form-control inputBox"  name="name" placeholder="Enter Your Name"><br>
                         <input type="hidden" class="form-control inputBox"  name="countTotal" value=<%=totalCount %>><br>
                        <input type="submit" class="submitBtn btn btn-lg rounded-circle" value="Go"><br>
                        </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
      <!-- -----------End Modal-------------------- -->
      
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
    <script src="EditmentalAgeCalculate/mentalAgeCalculate.js" type="text/javascript"></script>
</body>
</html>
