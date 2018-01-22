<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		boolean wait = false;
		String userid = (String) session.getAttribute("userid");
		String gameid = (String) session.getAttribute("gameid");
		String score = (String)session.getAttribute("score");
		%>		
		<%=score%><%=userid%><%=gameid %>
		<%try {
	        Class.forName("oracle.jdbc.driver.OracleDriver");
	    } catch (ClassNotFoundException ex) {
	    	out.println("exception raised");   
	    }
	     	        
	  try {
	  	 
	  	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@apollo.ite.gmu.edu:1521:ite10g","pmathur3","glerto");
	  	out.println("connected");
	  	 String sql = "select * from game_records where entered='false'";
	  	PreparedStatement Prep = con.prepareStatement(sql);
	  	ResultSet rs = Prep.executeQuery();
	  	
	      if(rs.next() ==  false){
	    	  String f = "false";
	    	  out.println("first");
	      	sql = "insert into game_records values(?,?,?,?,?,?)";
	      	PreparedStatement Prep1 = con.prepareStatement(sql);
	      	Prep1.setString(1, gameid);
            Prep1.setString(2, userid);
            Prep1.setString(3, score);
            Prep1.setString(4, null);
            Prep1.setString(5, null);               
            Prep1.setString(6, f);  
            Prep1.executeUpdate();
            out.println("done inserting");
            Prep1.close();
            wait = true;
	      }
	      else
	      {
	    	  	String t ="true";
	    	  	sql = "update game_records SET player2= ?, score2 = ?, entered = ? where gameid=?";
		      	PreparedStatement Prep2 = con.prepareStatement(sql);
		      	Prep2.setString(1, userid);
	            Prep2.setString(2, score);
	            Prep2.setString(3, t);
	            Prep2.setString(4, gameid); 
	            Prep2.executeUpdate();
	            out.println("done updating");
	            Prep2.close();
	            wait = false;
	      }
	      Prep.close();
          if(wait == true){
        	  out.println("Waiting for the opponent");
        	  response.sendRedirect("/back-cpu/waiting.jsp");
        	 
          }
          else
          {
        	response.sendRedirect("/back-cpu/Result.jsp");  
        	  //redirectipn code
          }
          
                  
		if (con != null) 
		{
		  con.close();
		
		}

	  
	  }   
		catch(Exception e)
	  	{
	  		e.printStackTrace();
	  	}	
	  	 %>
</body>
</html>