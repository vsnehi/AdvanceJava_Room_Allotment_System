<%@ page import="java.sql.*" %>    
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<%@ page import="Models.*" %>

 
 

<%
try {
  
         String connectionURL = "jdbc:mysql://localhost:3306/renting";
         Connection connection = null;
         Statement statement = null;
         ResultSet rs = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         /* /* ORDER BY  Uid DESC */
         String QueryString = "select * from room_list ORDER BY Roomid DESC";
         rs = statement.executeQuery(QueryString);
 
    while (rs.next()) {
    %>
<span class="be-post " style="display:inline;">

								<a href="blog-detail-2.html" class="be-img-block">
								<img src="upload/<%=rs.getString(2)%>" alt="No Images Upload">
								</a>
								<a class="be-post-title"><%=rs.getString(3)%></a>
								<span>
									<a href="blog-detail-2.html" class="be-post-tag"><%=rs.getString(4)%></a>, 
									<a href="blog-detail-2.html" class="be-post-tag"><%=rs.getString(5)%></a>,  
									<a href="blog-detail-2.html" class="be-post-tag"><%=rs.getString(6)%></a>
								</span>
								 <div class="author-post">
									<img src="upload/<%=rs.getString(7)%>" class="ava-author">
									<span><a>Upload By:, <%=rs.getString(8)%></a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i><a onclick="Like()" id="Likes"><%=rs.getString(12)%></a></span>
									<span><i class="fa fa-eye"></i><%=rs.getString(10)%></span>
									<span><i class="fa fa-comment-o"></i><%=rs.getString(11)%></span>
								</div>
</span>				
<%   }   
   
    // close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {

         out.println("Unable to connect to database.");
       }
    %> 