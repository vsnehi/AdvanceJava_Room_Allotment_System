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




@WebServlet("/adminpost")
@MultipartConfig(fileSizeThreshold =1024*1024*20, //20MB
maxFileSize=1024 * 1024 * 30 , //30MB
maxRequestSize =1024*1024*50)


public class adminpost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminpost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	 @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		 HttpSession session = request.getSession(true);
		 response.setContentType("Text/html;charset=UTF-8");
	     PrintWriter out=response.getWriter();
		 Part part= request.getPart("file");
		String fileName= extractFileName(part);
		String DfileName=RegModel.MD5(fileName)+".jpg";
		String savePath="J:\\www\\home\\WebContent\\Account\\upload" + File.separator+DfileName;
		File dir=new File(savePath);
		part.write(savePath+File.separator);
		try {
	
			String RoomName=request.getParameter("RoomName");
			String address=request.getParameter("address");
			String ctype=request.getParameter("ctype");
			String price=request.getParameter("price");
			String rating=request.getParameter("rating");
			String UserImg=request.getParameter("UserImg");
			String UserName=request.getParameter("UserName");
			String RoomViewed="1";
			String RoomComment="A";
			
			  String connectionURL = "jdbc:mysql://localhost:3306/renting";
			 

			        Connection con = null;
			        PreparedStatement pst = null;
			        Class.forName("com.mysql.jdbc.Driver").newInstance();
			        con = DriverManager.getConnection(connectionURL, "root", "");

			        
			        
			        PreparedStatement ps = con.prepareStatement("insert into room_list(roomimg,RoomName,RoomAddress,RoomType,RoomPrice,userimage,username,RoomRating,RoomViewed,RoomComment,Likes) values(?,?,?,?,?,?,?,?,?,?,?)");

			        

			        ps.setString(1, DfileName);
			        ps.setString(2, RoomName);
			        ps.setString(3, address);
			        ps.setString(4, ctype);
			        ps.setString(5, price);
			        ps.setString(6, UserImg);
			        ps.setString(7, UserName);
			        ps.setString(8, rating);
			        ps.setString(9, RoomViewed);
			        ps.setString(10, RoomComment);
			        ps.setString(11, "1");
			           
int i = ps.executeUpdate();
if(i!=0){
	session.setAttribute("image", DfileName);
   response.sendRedirect("DashBoard/index.jsp");
	    }else {
}
          }catch(Exception e) {
						 out.println(e);
					 }
    	
    	
		
		
		
		
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	 
	 
	 
	 
	    public String extractFileName(Part part) {
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
