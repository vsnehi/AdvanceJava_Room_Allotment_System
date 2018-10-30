package Servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import Models.*;
 
/**
 * Servlet implementation class register
 */
@WebServlet("/admincat")
public class admincat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admincat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		PrintWriter pw = response.getWriter(); 
		PreparedStatement  ps;
		
		
		String mname=request.getParameter("mname");
		String mprice=request.getParameter("mprice");
		String minfo=request.getParameter("minfo");
		String mrate=request.getParameter("mrate");
		String memail=request.getParameter("memail");
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/renting","root","");
				

			morecatmodel.setMname(mname);
			morecatmodel.setMprice(mprice);
			morecatmodel.setMinfo(minfo);
			morecatmodel.setMrate(mrate);
			morecatmodel.setMemail(memail);
		
		
		
 ps=con.prepareStatement("insert into morecat(mname,minfo,mprice,mrate,memail) values(?,?,?,?,?)");
        
 
        
        ps.setString(1, morecatmodel.getMname());
		ps.setString(2, morecatmodel.getMinfo());
		ps.setString(3, morecatmodel.getMprice());
		ps.setString(4, morecatmodel.getMrate());
		ps.setString(5, morecatmodel.getMemail());
	 
		
		
		int i = ps.executeUpdate();
        
        
        if(i!=0){  

        

        	response.sendRedirect("DashBoard/index.jsp");

        }  
        else{  
        	response.sendRedirect("access.jsp");  }  
         
      }  
      catch (Exception e){  
        pw.println(e);  
      }  

 	 
		doGet(request, response);
	}

}
