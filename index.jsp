<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script>
function validateForm(){
	var chk = true;
	var errorMessage = "";
	var emailInput = document.getElementById("emailid").value;
	if(emailInput === ""){
		 errorMessage += "Email ID can't be empty. \n";
		 chk = false;
		 document.getElementById("emailid").value = "";
		 document.getElementById( "emailid" ).focus();
	}
	var pass = document.getElementById("password").value;
	if(pass === ""){
		 errorMessage += "Password can't be empty. \n";
		 chk = false;
		 document.getElementById("password").value = "";
		 document.getElementById("password").focus();
	}
	if(chk === false){
		alert(errorMessage);
	}
	return chk;
}
</script>
</head>
<body>
    <h1><center> Welcome to Backgammon</center> </h1>
<center>

<div id="body1">
<form method="post" onSubmit="return validateForm()" action="./Login" name="loginform">
        <table cellpadding="3" cellspacing="5" width="50%">
                <thead>
                    <tr>
                        <th colspan="2"><FONT face="comic sans ms" size="3">Login Form</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        
                        <td><font face="comic sans ms" size="2">EmailID :</td>
                        <td><input type="email" name="emailid" id="emailid" placeholder="Email ID"/></td>
                    	
                    </tr>
                    <tr>
                        <td><font face="comic sans ms" size="2">Password : </td>
                        <td><input type="password" name="password" id="password" placeholder="Your password"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    </tbody>
			<tr>
                        <td colspan="2">To register, <a href="Registration.jsp">Click here</a></td>
                    </tr>
            </table>

        </form>

</div>
</center>

</body>
</html>