<!DOCTYPE HTML>
<%!
int currentCount;
String answer1;
String answer2;
String answer3;
String answer4;
String answer5;
String answer6;
String answer7;
String answer8;
String answer9;
String answer10;
%>
<%

currentCount=(Integer)pageContext.getAttribute("totalCount",PageContext.SESSION_SCOPE);
answer1=(String)pageContext.getAttribute("answer1",PageContext.SESSION_SCOPE);
answer2=(String)pageContext.getAttribute("answer2",PageContext.SESSION_SCOPE);
answer3=(String)pageContext.getAttribute("answer3",PageContext.SESSION_SCOPE);
answer4=(String)pageContext.getAttribute("answer4",PageContext.SESSION_SCOPE);
answer5=(String)pageContext.getAttribute("answer5",PageContext.SESSION_SCOPE);
answer6=(String)pageContext.getAttribute("answer6",PageContext.SESSION_SCOPE);
answer7=(String)pageContext.getAttribute("answer7",PageContext.SESSION_SCOPE);
answer8=(String)pageContext.getAttribute("answer8",PageContext.SESSION_SCOPE);
answer9=(String)pageContext.getAttribute("answer9",PageContext.SESSION_SCOPE);
answer10=(String)pageContext.getAttribute("answer10",PageContext.SESSION_SCOPE);
%>
<html lang="en-US">
<head>
	<meta charset="utf-8">
	<title>the Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
	<link rel="stylesheet" href="EditmantalAgeResult/mantalAgeResult2.css" />
</head>
<body>
       	 <div class="modal-dialog modal-lg">
   	 	 <div class="modal-content" style="background-color:#29212100;">
   	 	 	  <div class="modal-body">
						   
              
              <p class="qtxt" style="color:white;">
              This is Fairly impressive - your IQ could range from anywhere between 100(average) to 120
               </p>
               
              </div>
              <div class="row">
	 							  <div class="col-6">
	 							   <button class="form-control btn-outline-dark btnId"  data-toggle="modal" data-target="#answermodal" >Check Answers</button> 
	 							  </div>
	 							  <div class="col-6">
	 							   <a href="./home.html" class="form-control btn btn-outline-dark btnId">Go Back Home</a>
	 							  </div>
	 							</div>
						 </div>
					 <!----------------------------------End of modal----------->

   	 	 </div>
   	 </div>
   	  <!-- ---------------Start of AnswerModal--------------------------------- -->
                       <div class="modal fade" id="answermodal">
                         <div class="modal-dialog modal-lg">
                           <div class="modal-content" style="background:#343A40;">
                            <div class="modal-body">
                           <div class="text-center">
							  	<p class="qtxt" style="color:#B8C746;">Result : <%=currentCount%>/10 </p>
                             </div>
							 <hr class="line">
							 <div style="color:white;">
							 Q.1 : Choose the word most similar to "trustworthy"<br><br>
							 Your Answer : <%=answer1 %>
							 <div class="text-center">
							         <h2 style="color:#1abc9c;">e :Reliable</h2><br>
							      
							 </div><br>
							 <hr class="line">
							 Q.2 : 1-2-5-10-13-26-29-48 <br><br>
							 Your Answer : <%=answer2 %>
							  <div class="text-center">
							         <h2 style="color:#1abc9c;">e :48</h2><br>
							      
							       
							 </div><br>
							 <hr class="line">
							 Q.3 : If all Bloops are Razzies are Lazzies,all Bloops are definitely Lazzies?<br><br>
							 Your Answer : <%=answer3 %>
							  <div class="text-center">
							         <h2 style="color:#1abc9c;">a :True</h2><br>
							       
							       
							 </div><br>
							 <hr class="line">
							 Q.4 : If you rearrange the letters "LNGEDNA" you have the name of a(n)<br><br>
							 Your Answer : <%=answer4 %>
							  <div class="text-center">
							         <h2 style="color:#1abc9c;">b :Country</h2><br>
							      
							 </div><br>
							 <hr class="line">
							 Q.5 :  <div class="container">
							<div class="row justify-content-center" >
							   <div class="col-12  align-self-center">
							     <img src="img/Q.JPG" class="img-fluid">
							   </div>
							</div>
               </div><br><br>
							 Your Answer : <%=answer5 %>
							  <div class="text-center">
							         <h2 style="color:#1abc9c;">d :25</h2><br>
							       
							       
							 </div><br>
							 <hr class="line">
							 Q.6 : Ralph likes 25 but not 24;he likes 400 but not 300 he likes 144 but not 145.Which does he like:<br><br>
							 Your Answer : <%=answer6 %>
							  <div class="text-center">
							         <h2 style="color:#1abc9c;">e :1600</h2><br>
							      
							  </div><br>
							 <hr class="line">
							 Q.7 : Which one of the following is least like the others<br><br>
							 Your Answer : <%=answer7 %>
							  <div class="text-center">
							         <h2 style="color:#1abc9c;">e :Flower</h2><br>
							       
							       
							 </div><br>
							 <hr class="line">
							 Q.8 : <div class="row">
					  <div class="col-12">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b1.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b2.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b3.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b4.JPG">
					    <img alt="question Img" class="img img-fluid img-thumbnail" src="img/b5.JPG">
					  </div>
					</div>	<br><br>
							 Your Answer : <%=answer8 %>
							  <div class=" row text-center">
							        <div class="col-12">
							         <img alt="image of color" class="img img-fluid rounded" src="img/c3.JPG">
							        </div>
							      
							       
							 </div><br>
							 <hr class="line">
							 Q.9 : 1-8-27-?-125-216<br><br>
							 Your Answer : <%=answer9 %>
							  <div class="text-center">
							         <h2 style="color:#1abc9c;">d :64</h2><br>
							       
							       
							 </div><br>
							 <hr class="line">
							 Q.10 : <div class="container-fluid">
					<div class="text-center">
					<p class="qtxt">Which of figures below the line of drawings best completes the series?</p>
					</div>
					<div class="row justify-content-center">
					  <div class="col-12 align-self-center">
					    <img alt="question Img" class="imgBox img-fluid img-thumbnail" src="img/q1.JPG">
					    <img alt="question Img" class="imgBox img-fluid img-thumbnail" src="img/q2.JPG">
					    <img alt="question Img" class="imgBox img-fluid img-thumbnail" src="img/q3.JPG">
					    <img alt="question Img" class="imgBox img-fluid img-thumbnail" src="img/q4.JPG">
					   
					  </div>
					</div>		  	
               </div><br><br>
							 Your Answer : <%=answer10 %>
							  <div class=" row text-center">
							        <div class="col-12">
							         <img alt="Answer Img" class="img img-fluid" src="img/a5.JPG">
							        </div>
							      
							       
							 </div><br>
							 <hr class="line">
							 
							 </div>
							   
                            </div>
                           </div>
                         </div>
                       </div>
                     <!-- ---------------end of AnswerModal--------------------------------- -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
    <script src="EditthinkingBalance/thinkingBalance.js" type="text/javascript"></script>
</body>

</html>
