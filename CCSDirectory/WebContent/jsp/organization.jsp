<!DOCTYPE html>
<html lang="en-US">
<head>
<title>Organization</title>
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

	<%@page import="com.ccsdirectory.model.*"%>
	<%!Article article = new Article();%>




	<jsp:include page="/jsp/navigation.jsp"></jsp:include>
	<div class="container">
		<section class="row news">
			<div class="col-9 content">
				<section>
					<h2>News inside Organization</h2>
					<%
					 for(Article a : article.getArticleByPosition("Organization")){
					    	String title = a.getTitle();
					  %>
					<article>
						<h3 id="<%=title %>"><%=title %></h3>
						<p><%=a.getContent() %></p>
						<div class="article-info">
							<div class="date"><%=a.getDatePosted() %></div>
							<div class="posted-by">
								posted by <%=a.getPostedBy() %>
							</div>
						</div>
					</article>
					<% } %>

				</section>
			</div>
			<div class="col-3 aside-right">
				<h2>Latest News</h2>
				<ul>
					<%
					 for(Article a : article.getArticleByPosition("Organization")) {
							String title = a.getTitle();
					%>
							<li><a href="#<%=title%>"><%=title %></a></li>
					<%
						}
					%>
				</ul>
				<h2>Objectives</h2>
				<strong>Programmer's Den</strong><br>
				<p style="text-indent: 50px;"> 
				  Our organization aims to provide an environment that will serve as an avenue for sharing programming ideas and knowledge, and to gather and assemble a community of skilled and competent programmers in the College of Computer Studies.
				</p>
			</div>
		</section>
	</div>

	<div style="position: relative; top: 20px;">
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
	</div>
</body>
</html>