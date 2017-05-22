<!DOCTYPE html>
<html>
<head>
<title>Login to Dashboard</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/dashboard.css" />

</head>


<body class="body-login">

	<%
	
		if (session.getAttribute("firstname") != null) {
			switch((String)session.getAttribute("position")){
			case "Administrator":
				response.sendRedirect("admin.jsp");
				break;
			case "Faculty":
				response.sendRedirect("faculty-panel.jsp");
				break;
			case "Organization":
				response.sendRedirect("organization-panel.jsp");
				break;
			}
		}
			
	%>

	<%
		String errorMessage = (String) request.getAttribute("invalid");
		if (errorMessage == null)
			errorMessage = "";
	%>

	<div class="top">
		<a href="<%=request.getContextPath()%>/">CCSDirectory.com</a>
	</div>

	<form action="/CCSDirectory/Dashboard.login" method="POST">
		<fieldset>
			<legend>Login to Dashboard</legend>
			<span class="title">Username</span> <input type="text"
				name="username" placeholder="username here..." required autofocus />
			<br> <span class="title">Password</span> <input type="password"
				name="password" placeholder="password here..." required /> <br>
			<span style="color: red; font-family: corbel;">
				<%
					out.println(errorMessage);
				%>
			</span>
			
			<button type="submit">Log In</button>

			<br>
			<br> <a href="<%=request.getContextPath()%>/">Back to
				CCSDirectory.com</a>
		</fieldset>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>