package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.*;

/**
 * Servlet implementation class CreateUserCookie
 */
@WebServlet("/CreateUserCookie")
public class CreateUserCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUserCookie() {
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
		
		String username=request.getParameter("username");
		Cookie newuser=new Cookie("username",username);

		newuser.setMaxAge(60*60);
		response.addCookie(newuser);

		
		
		PrintWriter out=response.getWriter();
		String msg2;
		try {
			msg2 = CreateUserCookies.SearchUser();
			
			if(msg2.equals("success"))
		{
			
				//out.println("Data Inserted ");
				response.sendRedirect(" ");
				//response.sendRedirect("./Conf");
		}
		else
		{
			//out.println("NO");
			response.sendRedirect(" ");
		}
		} catch (Exception e) {
			

			  e.printStackTrace();
		}
	
		
		
		
		
		
		
		
		
		doGet(request, response);
	}

}
