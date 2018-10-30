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


@WebServlet("/ProfileImage2")
@MultipartConfig(fileSizeThreshold =1024*1024*20, //20MB
maxFileSize=1024 * 1024 * 30 , //30MB
maxRequestSize =1024*1024*50)


public class ProfileImage2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	 @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession session = request.getSession(true);
		 
		 
		 if (session != null) {
				if (session.getAttribute("name") != null) {
					String name = (String) session.getAttribute("name");
					String email = (String) session.getAttribute("email");
					String mobile = (String) session.getAttribute("mobile");
					String gender = (String) session.getAttribute("gender");
				    String password = (String) session.getAttribute("password");
				
  
		    response.setContentType("Text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			Part part= request.getPart("file");
			
			
			
			String fileName= extractFileName(part);
			
			String DfileName=RegModel.MD5(fileName)+".jpg";
			
			String savePath="J:\\www\\home\\WebContent\\Account\\upload" + File.separator+DfileName;
			

			File dir=new File(savePath);
			
			part.write(savePath+File.separator);
			 
    	 try {
				  
		  String connectionURL = "jdbc:mysql://localhost:3306/renting";
		 

		        Connection con = null;
		        PreparedStatement pst = null;
		        Class.forName("com.mysql.jdbc.Driver").newInstance();
		        con = DriverManager.getConnection(connectionURL, "root", "");

		        
		        
		       pst = con.prepareStatement("update user set image='"+DfileName+"' where UserEmail='"+email+"' and UserPass='"+password+"'");
 
		       int i = pst.executeUpdate();
		        
		        
		        if(i!=0){  

		        	session.setAttribute("image", DfileName);
		        	response.sendRedirect("Account/landlord.jsp");
		        }
		   
		         }catch(Exception e) {
				 out.println(e);
			 }
		       
			
				} else {
				 
				}
			}
		 
			
			
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
