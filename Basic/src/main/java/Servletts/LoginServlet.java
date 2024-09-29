package Servletts;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        // Check if the username and password are correct (replace with your values)
	        if ("BVIMIT".equals(username) && "BVIMIT".equals(password)) {
	            // Authentication succeeded; you can set a session attribute to indicate the user is logged in
	            HttpSession session = request.getSession();
	            session.setAttribute("username", username);

	            // Redirect to a secure page (e.g., dashboard)
	            response.sendRedirect("welcome.jsp");
	        } else {
	            // Authentication failed; you can display an error message on the login page
                response.getWriter().write("<script>alert('Invalid Username or Password.Please login again!!!');window.location='index.jsp'</script>");
	        }
		
	}

}
