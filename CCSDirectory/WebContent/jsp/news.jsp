<!DOCTYPE html>
<html lang="en-US">
<head>
<title>News</title>
<meta charset="utf-8" />
<meta name="description"
	content="College of Computer Studies at Tarlac State University" />
<meta name="keywords"
	content="CCS,CCS at TSU,College of Computer Studies" />
<meta name="author" content="Ivan Arnie Ranario" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/post.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/grid-layout.css" />

</head>


<body>
<%@page import="com.ccsdirectory.model.*,java.util.List" %>
<%! Article news = new Article(); %>

	<jsp:include page="/jsp/navigation.jsp"></jsp:include>
	<div class="container">
		<section class="row news">
			<div class="col-3 aside-left">
				<h2>Others</h2>
				<ul>
					<li><a href="<%=request.getContextPath()%>/jsp/organization.jsp">Organization</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/faculty.jsp">Faculty</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/cs-department.jsp">Computer Science</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/it-department.jsp">Information Technology</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/is-department.jsp">Information Systems</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/act-department.jsp">Associate in Computer Technology</a></li>
				</ul>
			</div>
			
			<div class="col-6 content">
				<section>
					<h2>News for the day</h2>
		
		  <% for(Article article : news.getNews()){ 
		  	  String title = article.getTitle();
		  %>
					<article>
						<h3 id="<%=title%>"><%=title %></h3>
						<p><%=article.getContent() %></p>
						<div class="article-info">
							<div class="date"><%=article.getDatePosted() %></div>
							<div class="posted-by">
								posted by <%=article.getPostedBy() %>
							</div>
						</div>
					</article>
			<% } %>
			

				</section>
			</div>
			<div class="col-3 aside-right">
				<h2>Latest News</h2>
				<ul>
				<% for(Article article : news.getNews()){ 
					String title = article.getTitle();
				%>
				 <li><a href="#<%=title%>"><span><%=title %></span></a> (<%=article.getDatePosted() %>)</li>
				<% } %>
				</ul>
			</div>
			
		</section>
	</div>

	<div style="position: relative; top: 20px;">
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
	</div>
</body>
</html>