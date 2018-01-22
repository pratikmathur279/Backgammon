<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script>
function validateForm() {
    var result = null;
    var errorMessage = "";
    var chk = true;
    var name = document.getElementById("name").value; 
    var emailid = document.getElementById("emailid").value; 
    var phone_no = document.getElementById("phone_no").value;
    var pwd = document.getElementById("password").value;
    var cpwd = document.getElementById("cpwd").value;    
    var namepattern = /^[A-Z,a-z]+ [A-Z,a-z ]+$/;
    var phonenopattern = /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$/;  
    var passwordpattern = /^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).+$/;
   
    if (name==null || name=="") 
    {
        errorMessage += "Name missing\n";
        chk = false;
    }
    else if(!name.match(namepattern))
    {
    	errorMessage += "Name should have only charcters and full name is required(First and Last)\n";
    	chk = false;
    }
    
    if (emailid == null || emailid == "") 
    {
    	errorMessage += "Email ID missing\n";
        chk = false;
    }
    if (phone_no==null || phone_no=="") 
    {
    	errorMessage += "Phone number missing\n";
        chk = false;
        
     }
        else if(!phone_no.match(phonenopattern)) 
        {
        	errorMessage +="Phone number must contain only numbers and must be of the format 123-456-7890 OR (123) 456-7890 OR 123 456 7890 OR 123.456.7890 OR +1 (123) 456-7890\n";
        chk = false;
    }    
    if (password==null || password=="") 
    {
    	errorMessage +="Password missing\n";
        chk = false;
        
    }
    else if(!password.match(passwordpattern))
    {
    	errorMessage += "Password should follow the given requirements\n";
    chk = false;
}        
    if (cpwd==null || cpwd=="") 
    {
    	errorMessage += "Please confirm your password\n";
        chk = false;
        
      }
    else if (cpwd != password) 
    {
    	errorMessage += "Passwords do not match!\n";
        chk = false;
        
        }
        
       if(chk === false)
    	   alert(errorMessage);
      return chk;
                
}
</script>
</head>
<body>
<center><strong><h1>Backgammon</h1></strong></center><br>

    <center>
<div id="formalign">
 <h2><b> Registration</b></h2>
    <form action="Register" name ="registerform" onsubmit="return validateForm()" method="post" >
    <table>
      <tr><td><b>Full Name: </b></td><td>   <input name="name" type="text" id="name"  /></td></tr>
      <tr><td><b>Email ID: </b></td><td>     <input name="emailid" type="text" id="emailid" /></td></tr>
      <tr><td><b>Password:  </b>  </td><td>   <input name="password" type="password" id="password" /></td></tr>
      <tr><td><b>Confirm Password:</b> </td><td>     <input name="cpwd" type="password" id="cpwd" /> </td></tr>
	  <tr><td><b>Phone Number:  </b>  </td><td>     <input name="phone_no" type="text" id="phone_no"  /></td></tr>
   
    <tr><td><input name="" type="submit" value="submit" /></td></tr><br>
	<tr><td>To go back to login page, <a href="index.jsp">click here</a>
    
    <tr> <td colspan="2" >Phone number must be of the format 123-456-7890 OR (123) 456-7890 OR 123 456 7890 OR 123.456.7890 OR +1 (123) 456-7890.<br>
    				<br><b>Password requirements:</b><br>
                 1) Must have two uppercase letters<br>
                 2) Must have one special case letter: ! @ # $ & *<br>
                  3) Must have at least 2 digits<br>
                  4) Must have 3 lowercase letters<br>
                  5) Length of the password must be greater than or equal to 8 
             
             </td></tr>
     </table>
  </form>
 
</div>
</center>
</body>
</html>