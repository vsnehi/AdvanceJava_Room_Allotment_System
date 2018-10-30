<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  
<%
try {
	     String x=request.getParameter("x");
         String connectionURL = "jdbc:mysql://localhost:3306/renting";
         Connection connection = null;
         Statement statement = null;
         ResultSet rs=null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         /* /* ORDER BY  Uid DESC */
 
         String QueryString = "select * from room_list WHERE RoomRating='"+x+"'";
         rs = statement.executeQuery(QueryString);
    
    while (rs.next()) {
    String roomid=rs.getString(1);
    %>
    <div class="custom-column-5" height="300px" >    
                                 <a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-img-block">
								<img src="upload/<%=rs.getString(2)%>" alt="No Images Upload">
								</a>
								<a class="be-post-title"><%=rs.getString(3)%>&nbsp;&nbsp; <b style="color:red;weight:bold;font-family:cursive;"><%=rs.getString(9)%></b></a>
								<span>
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag"><%=rs.getString(4)%></a>, 
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag"><%=rs.getString(5)%></a>,  
									<a href="checkout.jsp?id=<%=rs.getString(1)%>"  style="color:red;font-family:cursive;weight:bold;" class="be-post-tag"><%=rs.getString(6)%></a>
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
</div> 
			
<%   }   
   
    // close all the connections.
rs.close(); 
statement.close();
connection.close();
} catch (Exception ex) {

         out.println("Unable to connect to database.");
       }
    %>

 