package com.ccsdirectory.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ccsdirectory.model.Article;
import com.ccsdirectory.model.Users;

@WebServlet("/ArticleAdd.add")
public class ArticleAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("article");
		Date date = new Date();
		
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(Calendar.DATE, 1);
		Date newDate = c.getTime();
		
		Article article = new Article(title,content,new SimpleDateFormat("yyyy-MM-dd").format(newDate),Users.user_fullname);
		if(new Article().addArticle(article) == true){
			RequestDispatcher rd = request.getRequestDispatcher("jsp/dashboard.jsp");
			rd.forward(request, response);
		}
	}

}
