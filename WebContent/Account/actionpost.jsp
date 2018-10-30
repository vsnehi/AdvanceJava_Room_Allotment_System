<%@ page import="java.sql.*" %>    
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<%@ page import="Models.*" %>
<%

PreparedStatement  ps;
String RoomName=request.getParameter("RoomName");
String address=request.getParameter("address");
String ctype=request.getParameter("ctype");
String price=request.getParameter("price");
String rating=request.getParameter("rating");
String UserImg=request.getParameter("UserImg");
String UserName=request.getParameter("UserName");
String Images="A";
String RoomViewed="1";
String RoomComment="A";
      try {
  
          String connectionURL = "jdbc:mysql://localhost:3306/renting";
  
 
         Connection con = null;
         Statement statement = null;
         ResultSet rs = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         con = DriverManager.getConnection(connectionURL, "root", "");
         statement = con.createStatement();
        
         
            newpostmodel.setDfileName(Images);
			newpostmodel.setHotel(RoomName);
			newpostmodel.setAddress(address);
			newpostmodel.setCtype(ctype);
			newpostmodel.setPrice(price);
			newpostmodel.setRating(rating);
			newpostmodel.setUserImg(UserImg);
			newpostmodel.setUserName(UserName);
			newpostmodel.setRoomViewed(RoomViewed);
			newpostmodel.setRoomComment(RoomComment);
		
		
		
ps=con.prepareStatement("insert into room_list(roomimg,RoomName,RoomAddress,RoomType,RoomPrice,userimage,username,RoomRating,RoomViewed,RoomComment) values(?,?,?,?,?,?,?,?,?,?)");

     

ps.setString(1, newpostmodel.getDfileName());
ps.setString(2, newpostmodel.getHotel());
ps.setString(3, newpostmodel.getAddress());
ps.setString(4, newpostmodel.getCtype());
ps.setString(5, newpostmodel.getPrice());
ps.setString(6, newpostmodel.getUserImg());
ps.setString(7, newpostmodel.getUserName());
ps.setString(8, newpostmodel.getRating());
ps.setString(9, newpostmodel.getRoomViewed());
ps.setString(10, newpostmodel.getRoomComment());



		int i = ps.executeUpdate();
     
     
     if(i!=0){  

     

     	response.sendRedirect("Account/landlord.jsp");

     }  
     else{  
     	response.sendRedirect("Account/landlord.jsp");  }  
     
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
  
    rs.close();
    statement.close();
    con.close();
} catch (Exception ex) {
        out.println("Unable to connect to database.");
       }
%>  