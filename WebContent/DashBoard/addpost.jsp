<br>
<br>
<br><h1>Add POST</h1>

<%@ page import="javax.servlet.http.HttpSession" %>   
<%@ page import="java.sql.*" %>    
<div class="w3-row-padding">
<div class="w3-col m12">
<div class="w3-card w3-round w3-white">
<div class="w3-container w3-padding">             
<div class="be-post">
	
<form method="post" encType="multipart/form-data" action="../adminpost" class="form table"> 
	
 <a class="be-img-block">
               <label for="file">Upload New Room Image</label>
               <input type="file" name="file" id="file" placeholder="Upload Image">
</a>  
<a class="be-post-title">
	                                    <label for="RoomName">Name Of Hotel</label>
	                                    <input type="text" name="RoomName" id="RoomName" placeholder="Name Of Hotel">
</a>
<a class="be-post-title">
	                                      <label for="address">Address</label>
	                                      <input type="text" name="address" id="address" placeholder="Address Location">
</a> 
<%
      try {
  
          String connectionURL = "jdbc:mysql://localhost:3306/renting";
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          connection = DriverManager.getConnection(connectionURL, "root", "");
          statement = connection.createStatement();
          String QueryString = "select * from morecat";
          rs = statement.executeQuery(QueryString);
%>
<a class="be-post-title">
                                    	 <label for="type">Room Categories</label>
                                         <select name="ctype" id="type" class="w3-input">
<%
    while (rs.next()) {
%>
    
 	                                     <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
<%   }     %>
</select>
</a>
<%
rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    out.println("Unable to connect to database.");
}
%> 

<hr>   
<span>
<a class="be-post-tag"><input type="rate" name="price" class="w3-input" placeholder="Price Rate"></a>, 
<a class="be-post-tag"><input type="rate" name="rating" class="w3-input" placeholder="Room Type,ex Luxary"></a>,  
</span>
<div class="author-post">
<img src="../Account/upload/<%=session.getAttribute("image")%>" class="img-circle">
<input type="text" value='<%=session.getAttribute("image")%>' class="w3-hide" name="UserImg">
<span><input type="text" value='<%=session.getAttribute("name")%>' name="UserName" class="w3-hide"><%=session.getAttribute("name")%></span>
</div>
<div class="info-block">
<input type="submit" value="Add Rooms" name="submit" class="btn btn-success w3-input w3-padding">
</div>
</form>
</div></div></div></div></div>
