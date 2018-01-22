<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.servlet.http.HttpSession"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
        <h1>Statistics of User with Email ID :
        <%= session.getAttribute("userid") %>
        </h1>        
         <%
  	//String username = "messi@gmu.edu";
    //     System.out.println(username);
  String username = (String) session.getAttribute("userid");
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@apollo.ite.gmu.edu:1521:ite10g","pmathur3","glerto");
  //PreparedStatement  st = null;
  //ResultSet rs = null;
  
  try
  {     
      String sql = "select * from winstats where userid='"+username+"'";
      
      PreparedStatement stmt=con.prepareStatement(sql);
     
      //st.setString(1,username);
      ResultSet result1 = stmt.executeQuery();
      result1.next();
      
 	  %>
      
			<h2>Win/Loss Statistics</h2>
     
		<table cellpadding="3" cellspacing="5" width="60%">
      	<tr>
			<td><b>UserID</td>
			<td><b>Matches Played</td>
			<td><b>Wins</td>
			<td><b>Losses</td>
		</tr>
		<tr>
			<td><% out.println(result1.getString(1));%></td>
			<td><% out.println(result1.getInt(2)); %></td>
			<td><% out.println(result1.getInt(3)); %>
			<td><% out.println(result1.getInt(4)); %>
			 </td>
		</tr>
  <%
    }
  catch(Exception e)
  { 
	  e.printStackTrace();
	  }
 %>
 
 </table>
 <br><br><br>
 
	To go back to profile, <a href="Profile.jsp">Click here</a>
      <br><br>
	<form action="./Logout">       
        <input type="submit" value="Log Out">
	</form>
</body>
</html>