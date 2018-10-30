<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"; %>
<%@ page import="java.sql.*"; %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   int imageid=Integer.parseInt(request.getParameter("id"));

try {
	  
    String connectionURL = "jdbc:mysql://localhost:3306/renting";
    Connection con = null;
    Statement statement = null;
    ResultSet rs = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection(connectionURL, "root", "");
    statement = con.createStatement();
   
    String QueryString = "select * from image where id=1";
    
    rs = statement.executeQuery(QueryString);
    
    while (rs.next()) {
    	   String image=rs.getString("image");
   
     
%>
 <img src="<%=out.println(image)%>" width="200" height="200" />

<%
    }
}catch(Exception e){
	out.println(e);
}

%>
</body>
</html>