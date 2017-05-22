package com.ccsdirectory.web;

import com.ccsdirectory.model.*;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Dashboard.login")
public class Dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		HttpSession session = request.getSession();
		
		Users user = new Users().getInfo(username, password);

		if (user != null) {
			session.setAttribute("firstname", user.getFirstname());
			session.setAttribute("lastname", user.getLastname());
			session.setAttribute("position", user.getPosition());

			RequestDispatcher view = request.getRequestDispatcher("jsp/dashboard.jsp");
			view.forward(request, response);

		} else {
			request.setAttribute("invalid", "Invalid username or password.");
			RequestDispatcher view = request.getRequestDispatcher("jsp/login-page.jsp");
			view.forward(request, response);
		}
	}
}
