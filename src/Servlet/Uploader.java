package Servlet;

import java.io.IOException;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.sql.*;
import javax.servlet.http.Part;
import Models.*;
import java.math.BigInteger;
import java.security.MessageDigest;

 
@WebServlet("/Uploader")
@MultipartConfig(fileSizeThreshold =1024*1024*2, //2MB
                maxFileSize=1024 * 1024 * 10 , //10MB
                maxRequestSize =1024*1024*50)





public class Uploader extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
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
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection(connectionURL, "root", "");
       pst = con.prepareStatement("insert into image(image) values(?)");
       pst.setString(1,DfileName);
       pst.executeUpdate();
       out.println("<center>Image Inserted</center>");
       out.println("<center><a href='imageview.jsp?id=1'>Display Image </a></center>");
	 }catch(Exception e) {
		 out.println(e);
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




