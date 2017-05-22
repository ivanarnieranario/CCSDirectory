<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/dashboard.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/grid-layout.css" />
</head>
<body>

	<!-- Check users -->
	<%
		String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");
		String position = (String) session.getAttribute("position");
		if(firstname == null || firstname == "")
			response.sendRedirect("login-page.jsp");
	%>

<%@page import="com.ccsdirectory.model.*" %>
<%! 
	Users user = new Users();
	Article article = new Article();
%>



	<div class="sidenav">
		<div class="logo-title">
			<div class="logo">
				<a href="<%= request.getContextPath()%>"><img src="<%=request.getContextPath()%>/images/logos/ccs-logo.png"
					alt="ccs-logo" width="100%" height="100%" /></a>
			</div>
			<span>CCS Directory</span>

		</div>

		<div class="profile">
			<span class="name"><%=firstname + ", " + lastname%></span> <span
				class="position">${position}</span>
		</div>
		
		


		<nav>
			<ul>
				<li class="active" onclick="tab('News');" id="newsLink">News</li>
				<li  onclick="tab('Users');" id="userLink">Users</li>
			</ul>
		</nav>
		
		<script type="text/javascript">
			function tab(x){
				var userTab = document.getElementById("user-wrap");	
				var newsTab = document.getElementById("news-wrap");
				var userLink = document.getElementById("userLink");
				var newsLink = document.getElementById("newsLink");
			
				if(x == "Users"){
					userTab.style.display = "block";
					newsTab.style.display = "none";
					newsLink.classList.remove("active");
					userLink.classList.add("active");
				}else{
					userTab.style.display = "none";
					newsTab.style.display = "block";
					newsLink.classList.add("active");
					userLink.classList.remove("active");
				}
			}
				
		
		</script>




		<form class="logout" action="/CCSDirectory/Dashboard.logout"
			method="GET">
			<button type="submit" class="btnLogout">Logout</button>
		</form>
	</div>


	<div class="top-dash">
		<div class="profile-pic">
			<!-- <img src="<%= request.getContextPath()%>/images/faculty/ccs-dean.jpg"
				alt="dean" /> -->
		</div>
	</div>





	<div class="news-wrapper" id="news-wrap">
		<div class="row">
			<div class="col-12 news">
				<table>
					<tr>
						<th>Title</th>
						<th>Content</th>
						<th>Posted By</th>
						<th>Date</th>
					</tr>

					
					  <%
					    for(Article a : article.getArticles()){
					  %>
					  <tr>
						<td><%=a.getTitle() %></td>
						<td><%=a.getContent() %></td>
						<td><%=a.getPostedBy() %></td>
						<td><%=a.getDatePosted() %></td>
					</tr>
						<%
					    }
					  %>


				</table>
			</div>
		</div>
		
		
		
		<div class="row encode-news">
			<div class="col-12">
				<form action="/CCSDirectory/ArticleAdd.add" method="POST" style="float: left;">
					Title: <input type="text" name="title" required autofocus /> <br>
					Article:
					<textarea rows="10" cols="100" required name="article">
				
				</textarea>
				<button type="submit" style="margin: 10px 0px;">POST NOW</button>
				</form>
			</div>
		</div>
	</div>



	<div class="user-wrapper" id="user-wrap">
		<div class="row">
			<div class="col-8 users">
				<table>
					<tr>
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Username</th>
						<th>Password</th>
						<th>Position</th>
					</tr>
					
					<%
					  for(Users u : user.getUsers()){
				     %>
						<tr>
						  <td><%=u.getFirstname() %></td>
						  <td><%=u.getLastname() %></td>
						  <td><%=u.getUsername() %></td>
						  <td><%=u.getPassword() %></td>
						  <td><%=u.getPosition() %></td>
						</tr>
					<% 
					  }
					%>
					
				</table>
			</div>

			<div class="col-4 encode-user">
				<form action="/CCSDirectory/UserAdd.add" method="POST">
				  Firstname: <input type="text" name="firstname" required autofocus /> <br>
				  Lastname: <input type="text" name="lastname" required /> <br>
				  Username: <input type="text" name="username" required /> <br>
				  Password: <input type="password" name="password" required /> <br>
				  <select name="position" required>
				    <option value="Faculty">Faculty</option>
				    <option value="Organization">Organization</option>
				  </select>
				  <button type="submit">ADD USER</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>