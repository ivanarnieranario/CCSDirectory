<!DOCTYPE html>
<html lang="en-US">
<head>
<title>About CCS</title>
<meta charset="utf-8" />
<meta name="description" content="College of Computer Studies at Tarlac State University" />
<meta name="keywords" content="CCS,CCS at TSU,College of Computer Studies" />
<meta name="author" content="Ivan Arnie Ranario" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid-layout.css" />

</head>

<body>

<jsp:include page="/jsp/navigation.jsp"></jsp:include>
<br>
<div class="container">
   <section class="row" style="text-align:center;">
   
   <h2>What is <abbr title="College of Computer Studies">CCS</abbr>?</h2>
     <p>College of Computer studies is a premiere institution not only in the province of Tarlac, <br>but also in the whole Philippines. <br>CCS offers highly-accredited courses namely:</p>
	 <ul style="text-align: left;">
	   <li><a href="<%=request.getContextPath()%>/jsp/act-department.jsp">Associate in Computer Technology</a></li>
	   <li><a href="<%=request.getContextPath()%>/jsp/cs-department.jsp">Bachelor of Science in Computer Science</a></li>
	   <li><a href="<%=request.getContextPath()%>/jsp/it-department.jsp">Bachelor of Science in Information Technology</a></li>
	   <li><a href="<%=request.getContextPath()%>/jsp/is-department.jsp">Bachelor of Science in Information Systems</a></li>
	 </ul>
     
     <h2>What's inside CCS Directory?</h2>
     <p>CCS Directory provide you a legit information because not only adminsitrator can post an article <br>but also the faculty members and the leader of different organization.
  		<br>We'll give you an information everyday about what's happening inside CCS College. 
     </p>
     
     <h2>Objectives of CCS Directory</h2>
     <p style="text-align: justify; text-indent: 30px;">
       To help CCS Students of Tarlac State University  to provide information about their college. To give updates about upcoming events, activities and announcements. It includes the information of our faculty member such as their name, subjects that they teach and also their schedules. Announcement of our exams, if there is no classes and ofcourse the mission vision of different department of our college. The rooms, sections and also the schedules of the students also included. CCS Directory must also have the content of different organization inside the college and what is their purpose or the main goal of that organization. 
     </p>
     
     <h2>Where is CCS Building?</h2>
     <p><a
     href="https://wego.here.com/directions/mix/mylocation/e-eyJuYW1lIjoiQ0NTIFN0dWRlbnQgQ291bmNpbCIsImFkZHJlc3MiOiJSb211bG8gQmx2ZC4sIFNhbiBJc2lkcm8sIFRhcmxhYywgUGhpbGlwcGluZXMiLCJsYXRpdHVkZSI6MTUuNTIwMDE3MTExMDc4LCJsb25naXR1ZGUiOjEyMC41ODA3ODc2NTg2OSwicHJvdmlkZXJOYW1lIjoiZmFjZWJvb2siLCJwcm92aWRlcklkIjoxMzAwMjEyMTcwMjA2Njl9?map=15.52002,120.58079,15,normal&fb_locale=en_US" 
     target="_blank">Romulo Blvd.<br>
		San Isidro, Tarlac, Philippines 2300</a></p>
		
   </section>
</div>

<jsp:include page="/jsp/footer.jsp"></jsp:include> 

</body>
</html>