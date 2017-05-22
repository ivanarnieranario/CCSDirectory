package com.ccsdirectory.web;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Dashboard.logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("firstname");
		session.removeAttribute("lastname");
		session.removeAttribute("position");
		session.invalidate();
		
		response.sendRedirect("jsp/login-page.jsp");
	}

}
