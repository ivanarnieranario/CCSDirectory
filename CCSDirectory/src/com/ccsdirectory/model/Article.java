package com.ccsdirectory.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;

public class Article {
	private String title;
	private String content;
	private String datePosted;
	private String postedBy;
	
	private Connection connection;
	
	public Article(){
		try {
			connection = Database.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Article(String title,String content,String datePosted,String postedBy){
		this();
		this.title = title;
		this.content = content;
		this.datePosted = datePosted;
		this.postedBy = postedBy;
	}
	
	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public String getDatePosted() {
		return datePosted;
	}

	public String getPostedBy() {
		return postedBy;
	}
	
	public List<Article> getArticles(){
		List<Article> articles = new ArrayList<Article>();
		String sql = "SELECT title AS Title,content AS Content,datePosted AS Date,CONCAT(users.firstname,', ',users.lastname) AS PostedBy FROM article,users WHERE users.user_id = ? AND article.user_id = users.user_id";
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1,Users.user_id);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()){
				articles.add(new Article(
						rs.getString("Title"),
						rs.getString("Content"),
						rs.getString("Date"),
						rs.getString("PostedBy")
						));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		return articles;
	}
	
	
	public Boolean addArticle(Article article){
		String sql = "INSERT INTO article VALUES (null,?,?,?,?)";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, article.getTitle());
			statement.setString(2,article.getContent());
			statement.setString(3,  article.getDatePosted());
			statement.setString(4,Users.user_id);
			statement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}	
	}
	
	
	public List<Article> getNews(){
		List<Article> news = new ArrayList<Article>();
		String sql = "SELECT article.title, article.content, article.datePosted, CONCAT(firstname,', ',lastname) AS name, users.position FROM article, users WHERE users.user_id = article.user_id ORDER BY article.article_id DESC; ";
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			
			while(rs.next()){
				Article article = new Article(
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("datePosted"),
						rs.getString("name")
				);
				news.add(article);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return news;
	}
	
	public List<Article> getArticleByPosition(String position){
		List<Article> article = new ArrayList<Article>();
		String sql = "SELECT article.title, article.content, article.datePosted, CONCAT(firstname,', ',lastname) AS name, users.position FROM article, users WHERE users.user_id IN (SELECT users.user_id FROM users WHERE users.position = ?) AND article.user_id = users.user_id ORDER BY article.article_id DESC";
		
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, position);
			ResultSet rs = statement.executeQuery();
			while(rs.next()){
				Article a = new Article(
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("datePosted"),
						rs.getString("name")
				);
				article.add(a);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return article;
	}
	
	
}
