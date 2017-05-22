<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/navigation.css" type="text/css" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid-layout.css" type="text/css" />
  
  <script type="text/javascript">
    function responsiveNav(){

    	var nav = document.getElementById("topnav");
    	var top = document.getElementById("myTop");
    	
    	if(nav.className === "topnav"){
    		nav.className += " responsive";
    		top.style.position = "relative";
    	}
    	else{
    		nav.className = "topnav";	
    		top.style.position = "fixed";	
    	}
    }
    
    function initialize(){
    	var nav = document.getElementById("topnav");
    	nav.className = "topnav";
    	var pathName = window.location.pathname;
    	var currentPage = pathName.substring(pathName.lastIndexOf("/") + 1);
    	var dropdown = document.getElementById("drp");
    	
    	var li = nav.children;
    	switch(currentPage){
    	case "":
    	case "index.jsp":
    		li[0].children[0].classList.add("active");
    		break;
    	case "vision-mission.jsp":
    		li[1].children[0].classList.add("active");
    		break;
    	case "news.jsp":
        	li[2].children[0].classList.add("active");
        	break;
    	case "organization.jsp":
        	li[3].children[0].classList.add("active");
        	break;
    	case "faculty.jsp":
        	li[4].children[0].classList.add("active");
        	break;
    	case "history.jsp":
    		li[5].children[0].classList.add("active");
    		break;
    	case "about.jsp":
    		li[7].children[0].classList.add("active");
    		break;
    	case "ccs-map.jsp":
    		li[8].children[0].classList.add("active");
    		break;
    	case "cs-department.jsp":
    	case "it-department.jsp":
    	case "is-department.jsp":
    	case "act-department.jsp":
    		drp.style.backgroundColor = "green";
    		drp.style.color = "#999";
    		drp.style.borderRadius = "0px 0px 3px 3px";
    		break;
    	}
    }
    
  </script>
</head>

<body onload="initialize();">

	<div class="top" id="myTop">
	  <div class="nav-container">
	    <nav class="col-10">
		<ul id="topnav">
		  <li><a  href="<%=request.getContextPath()%>">Home</a></li>
		  <li><a href="<%=request.getContextPath()%>/jsp/vision-mission.jsp">Vision &amp; Mission</a></li>
		  <li><a href="<%=request.getContextPath()%>/jsp/news.jsp">News</a></li>
		  <li><a href="<%=request.getContextPath()%>/jsp/organization.jsp">Organization</a></li>
		  <li><a href="<%=request.getContextPath()%>/jsp/faculty.jsp">Faculty</a></li>
		  <li><a href="<%=request.getContextPath()%>/jsp/history.jsp">History</a></li>
		  <li class="dropdown active" id="drp">
		    <span class="dropdown-button">CCS Department</span>
		    <div class="dropdown-content">
		      <a href="<%=request.getContextPath()%>/jsp/cs-department.jsp">Computer Science</a>
		      <a href="<%=request.getContextPath()%>/jsp/it-department.jsp">Information Technology</a>
		      <a href="<%=request.getContextPath()%>/jsp/is-department.jsp">Information System</a>
		      <a href="<%=request.getContextPath()%>/jsp/act-department.jsp">Associate in Computer Technology</a>
		    </div>
		  </li>
		  <li><a href="<%=request.getContextPath()%>/jsp/about.jsp">About CCS</a>
		  <li><a href="<%=request.getContextPath()%>/jsp/ccs-map.jsp">CCSMap</a>
		  <li class="dashboard"><a href="<%=request.getContextPath()%>/jsp/login-page.jsp">Login to Dashboard</a></li>
		  <li class="nav-icon"><a onclick="responsiveNav();" >&#9776;</a></li>
	    </ul>
	    </nav>
	    <div class="col-2">
	     <a href="<%=request.getContextPath()%>/jsp/login-page.jsp">
	      <img class="ccs-logo" src="<%=request.getContextPath()%>/images/logos/ccs-logo.png" alt="ccs-logo" />
	    </a>
	    </div>
	  </div>
	</div>

</body>

</html>