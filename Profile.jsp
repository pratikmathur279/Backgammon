<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
</head>
<body>
<h1><center> Welcome to Backgammon</center> </h1>
<center>
<h3>Welcome, <%= session.getAttribute("userid") %></h3>
<div id="body1">
<form action="./GameSetup">
        
	<input type="submit" value="Play Backgammon!">     
        
</form>
    
<form method="post" name="profile">
        <table cellpadding="3" cellspacing="5" width="50%">
                <thead>
                    <tr>
                        <th colspan="2"><FONT face="comic sans ms" size="3">Profile</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- <tr>
                    	<td>
                    		<a href="./GameSetup"><input type="button" value="New game"></a>
                    	</td>
                     </tr>
                    -->
                    <tr>
                    	<td>
                    		<a href="statistics.jsp"><input type="button" value="View Statistics"></a>
                    	</td>
                    </tr>
    				<tr>
    				    <td>
                    		<a href="./Logout"><input type="button" value="Logout"></a>
                    	</td>
    				
    				</tr>
                    </tbody>
			
            </table>

        </form>

</div>
</center>

</body>
</html>