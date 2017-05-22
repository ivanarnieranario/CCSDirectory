<!DOCTYPE html>
<%@page import="java.util.List"%>
<html>
<head>
<title>Welcome to Dashboard</title>

</head>


<body>
	<%
	String position = (String) session.getAttribute("position");
	if (session.getAttribute("firstname") == "" || session.getAttribute("firstname") == null)
		response.sendRedirect(request.getContextPath() + "/jsp/login-page.jsp");
	%>
	
	
	<% if(position.equals("Administrator")){ %>
	  <jsp:include page="admin.jsp"></jsp:include>
	<% } %>
	
	<% if(position.equals("Faculty")){ %>
	  <jsp:include page="faculty-panel.jsp"></jsp:include>
	<% } %>
	
	<% if(position.equals("Organization")){ %>
		<jsp:include page="organization-panel.jsp"></jsp:include>
	<% } %>
	
	
</body>



</html>