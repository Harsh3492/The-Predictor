
<!DOCTYPE HTML>
<html lang="en-US">

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

%>
<head>
	<meta charset="utf-8">
	<title>the Calculator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="EditTrueorFalseResult/TrueorFalseResult.css" />
	
</head>
<body>

   	 <div class="modal-dialog modal-lg">
   	 	 <div class="modal-content" style="background-color:#29212100;">
   	 	 	  <div class="modal-body">
						   
               <div class="text-center">
							  	<p class="qtxt">Result</p>
               </div>
							 <hr class="line">
							 
				<div class="text-center">
							  	<p class="qtxt"><%=currentCount%>/8</p>
               </div>
							 <hr class="line">		    
						    
              <div class="form-group">
								
	 							<div class="row">
	 							  <div class="col-6">
	 							   <button class="form-control btn-outline-dark btnId"  data-toggle="modal" data-target="#answermodal" >Check Answers</button> 
	 							  </div>
	 							  <div class="col-6">
	 							   <a href="./home.html" class="form-control btn btn-outline-dark btnId">Go Back Home</a>
	 							  </div>
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
							  	<p class="qtxt" style="color:#B8C746;">Result</p>
                             </div>
							 <hr class="line">
							 <div style="color:white;">
							 Q.1 : In the Christian Bible,God kills more people than Satan<br><br>
							 Your Answer : <%=answer1 %>
							 <div class="text-center">
							         <h2>True</h2><br>
							       <p style="color:#1abc9c;" >
							       God kills over 2 million people in the Bible Satan kills 10 people.
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							 Q.2 : The average person swallows 8 spiders per year in their sleep<br><br>
							 Your Answer : <%=answer2 %>
							  <div class="text-center">
							         <h2>False</h2><br>
							       <p style="color:#1abc9c;">
							      This is an urban myth which was made up to prove that people will believe almost anything they hear on the internet!
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							 Q.3 : When a wombat dies,its children will instinctively start crying,even if they are thousands of miles away from their parent <br><br>
							 Your Answer : <%=answer3 %>
							  <div class="text-center">
							         <h2>False</h2><br>
							       <p style="color:#1abc9c;">
							          How would it know? 
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							 Q.4 : There are more grains of sand on the planet Earth than there are stars in the Universe<br><br>
							 Your Answer : <%=answer4 %>
							  <div class="text-center">
							         <h2>False</h2><br>
							       <p style="color:#1abc9c;">
							       The Universe is freakin'big!
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							 Q.5 : Mammoths were alive when the Egyptian pyramids were being built<br><br>
							 Your Answer : <%=answer5 %>
							  <div class="text-center">
							         <h2>True</h2><br>
							       <p style="color:#1abc9c;">
							      Leave a thumbs up for mammoths!
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							 Q.6 : The Chinese government encourage 'selfies' on their own social networking site to help build their facial recognition database<br><br>
							 Your Answer : <%=answer6 %>
							  <div class="text-center">
							         <h2>False</h2><br>
							      
							  </div><br>
							 <hr class="line">
							 Q.7 : Cats cannot walk backwards<br><br>
							 Your Answer : <%=answer7 %>
							  <div class="text-center">
							         <h2>False</h2><br>
							       <p style="color:#1abc9c;">
							       How would you even be able to test this theory?
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							 Q.8 : If Russia were a sheet of paper,it would be able to wrap itself around the(sort of)planet,Pluto<br><br>
							 Your Answer : <%=answer8 %>
							  <div class="text-center">
							         <h2>True</h2><br>
							       <p style="color:#1abc9c;">
							       Russia is HUGE!
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							  Q.9 : If Russia were a sheet of paper,it would be able wrap itself around the(sort of)planet,Pluto<br><br>
							 Your Answer : <%=answer8 %>
							  <div class="text-center">
							         <h2>True</h2><br>
							       <p style="color:#1abc9c;">
							       Russia is HUGE!
							       </p> 
							       
							 </div><br>
							 <hr class="line">
							  Q.10 : If Russia were a sheet of paper,it would be able wrap itself around the(sort of)planet,Pluto<br><br>
							 Your Answer : <%=answer8 %>
							  <div class="text-center">
							         <h2>True</h2><br>
							       <p style="color:#1abc9c;">
							       Russia is HUGE!
							       </p> 
							       
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
    <script src="EditTrueorFalseResult/TrueorFalseResult.js" type="text/javascript"></script>
   
</body>
</html>
