import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private final String userID = "yash";
	private final String password = "yash123";
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
		if(userID.equals(user) && password.equals(pwd))
		{
			Cookie loginCookie = new Cookie("user",user);
			loginCookie.setMaxAge(30*60);
			response.addCookie(loginCookie);
			response.sendRedirect("Login.jsp");
		}
		else
		{

			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.html");
			PrintWriter out= response.getWriter();
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
		}

	}

}
