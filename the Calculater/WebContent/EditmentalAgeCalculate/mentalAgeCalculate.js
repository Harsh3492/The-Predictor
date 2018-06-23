function validate(){
 var name=document.forms["formName"]["name"].value;
 if(name=="")
	 {
	 document.formName.name.focus();
	 alert("Please enter your Name");
	 return false;
	 }
}