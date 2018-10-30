package Servlet;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import javax.servlet.http.Part;
import Models.*;
import java.math.BigInteger;
import java.security.MessageDigest;


@WebServlet("/NewPost")
@MultipartConfig(fileSizeThreshold =1024*1024*200, //20MB
maxFileSize=1024 * 1024 * 300 , //30MB
maxRequestSize =1024*1024*5000)

public class NewPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	 @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
		 HttpSession session = request.getSession(true);
		 response.setContentType("Text/html;charset=UTF-8");
				
		 
		 if (session != null) {
				if (session.getAttribute("name") != null) {
					String username = (String) session.getAttribute("name");
					String email = (String) session.getAttribute("email");
					String mobile = (String) session.getAttribute("mobile");
					String gender = (String) session.getAttribute("gender");
				    String password = (String) session.getAttribute("password");
				    String Uimage = (String) session.getAttribute("image");
				     
		 
		 
		 
		 
			PreparedStatement  ps;
			PrintWriter pw=response.getWriter();
				
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/renting","root","");
					
				
				
			Part part= request.getPart("file");
			String fileName= extractFileName(part);
			String DfileName=RegModel.MD5(fileName)+".jpg";
			
			
			
			String hotel=request.getParameter("hotel");
			String address=request.getParameter("address");
			String ctype=request.getParameter("ctype");
			String price=request.getParameter("price");
			String rating=request.getParameter("rating");
			String UserImg=request.getParameter("UserImg");
			String UserName=request.getParameter("UserName");
			   
			
			 
			newpostmodel.setDfileName(DfileName);
			newpostmodel.setHotel(hotel);
			newpostmodel.setAddress(address);
			newpostmodel.setCtype(ctype);
			newpostmodel.setPrice(price);
			newpostmodel.setRating(rating);
			newpostmodel.setUserImg(UserImg);
			newpostmodel.setUserName(UserName);			 
			
			
			
	 String savePath="J:\\www\\home\\WebContent\\Account\\upload" + File.separator+DfileName;
		
	 File dir=new File(savePath);
	 part.write(savePath+File.separator);
		

		
		
ps=con.prepareStatement("insert into room_list(roomimg,RoomName,RoomAddress,RoomType,RoomPrice,userimage,username,RoomRating) values(?,?,?,?,?,?,?,?)");

ps.setString(1, newpostmodel.getDfileName());
ps.setString(2, newpostmodel.getHotel());
ps.setString(3, newpostmodel.getAddress());
ps.setString(4, newpostmodel.getCtype());
ps.setString(5, newpostmodel.getPrice());
ps.setString(6, newpostmodel.getUserImg());
ps.setString(7, newpostmodel.getUserName());
ps.setString(8, newpostmodel.getRating());

			
int i = ps.executeUpdate();	
			
		   if(i!=0){  
                  response.sendRedirect("Account/landlord.jsp");
	        }
		   else {
			   response.sendRedirect("access.jsp");
		   }
			
			}catch(Exception e) {
				e.printStackTrace();
			}
   } else {
					 
				}
			}
		doGet(request, response);
	}

 
	        String extractFileName(Part part) {
	    	String contentDisp =part.getHeader("content-disposition");
	    	String[] items=contentDisp.split(";");
	    	for(String s :items) {
	    		if(s.trim().startsWith("filename")) {
	    			return s.substring(s.indexOf("=")+2, s.length()-1);
	    			
	    		}
	    		
	    	}
	    	return "";
	    	}
}
