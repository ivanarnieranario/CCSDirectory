<!DOCTYPE html>
<html lang="en-US">
<head>
<title>CCS Directory</title>
<meta charset="utf-8" />
<meta name="description" content="College of Computer Studies at Tarlac State University" />
<meta name="keywords" content="CCS,CCS at TSU,College of Computer Studies" />
<meta name="author" content="Ivan Arnie Ranario" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/feature-image.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid-layout.css" />

</head>


<body>
  <%@page import="com.ccsdirectory.model.*" %>
  <%!
  	  Article article = new Article();
  	  int count = 0;
  %>

<jsp:include page="/jsp/navigation.jsp"></jsp:include>


  <div class="header">
    <div class="feature-image">
    
      <div class="slides fade">
        <div class="number-text">1 / 4</div>
        <img src="<%=request.getContextPath()%>/images/features/cs-feature.jpg" width="100%" height="100%"/>
        <div class="caption"><a href="<%=request.getContextPath()%>/jsp/cs-department.jsp">Learn More</a></div>
      </div>   
      
      <div class="slides fade">
        <div class="number-text">2 / 4</div>
        <img src="<%=request.getContextPath()%>/images/features/it-feature.jpg" width="100%" height="100%"/>
        <div class="caption"><a href="<%=request.getContextPath()%>/jsp/it-department.jsp">Learn More</a></div>
      </div>   
      
      <div class="slides fade">
        <div class="number-text">3 / 4</div>
        <img src="<%=request.getContextPath()%>/images/features/is-feature.jpg" width="100%" height="100%"/>
        <div class="caption"><a href="<%=request.getContextPath()%>/jsp/is-department.jsp">Learn More</a></div>
      </div> 
      
      <div class="slides fade">
        <div class="number-text">4 / 4</div>
        <img src="<%=request.getContextPath()%>/images/features/act-feature.jpg" width="100%" height="100%"/>
        <div class="caption"><a href="<%=request.getContextPath()%>/jsp/act-department.jsp">Learn More</a></div>
      </div> 
     
	  <a class="prev" onclick="clickSlide(-1);">&#10094;</a>
	  <a class="next" onclick="clickSlide(1)">&#10095;</a>
    </div>
   
    <!-- SlideShow Function -->
    <script src="<%=request.getContextPath()%>/javascript/slideshow.js" type="text/javascript"></script>
    
    <div style="text-align:center;">
      <span class="dot active" onclick="currentSlide(1);"></span>
      <span class="dot" onclick="currentSlide(2);"></span>
      <span class="dot" onclick="currentSlide(3);"></span>
      <span class="dot" onclick="currentSlide(4);"></span>
    </div>
    
    <div class="row ccs-map">
      <div class="col-8"><p>Try our CCS-MAP to locate your room and view your schedule</p></div>
      <div class="col-4"><a href="<%=request.getContextPath()%>/jsp/ccs-map.jsp">Enter CCSMap</a></div>
    </div>
  </div>
  
  <div class="container">
  <section class="row">
    <div class="col-5 img">
      <center><img src="<%=request.getContextPath()%>/images/features/graduates.jpg" alt="CCS Graduates" /></center>
    </div>
    <div class="col-7 info">
      <h2>CAREER ON THE GO</h2>
      <p>With the college's topnotch quality of education, graduates have high potential in the industry and can easily be hired at certified competent companies.</p>
    </div>
  </section>
  </div>
  
  
<div class="paralax" style="background-image: url('images/backgrounds/ccs-building.jpg');">

<div class="container-full">
 <section>
  <div class="vid">
  <h2>CCS Inauguration & Alumni Night 2017</h2>
      <center>
        <video controls poster="<%= request.getContextPath()%>/videos/inauguration-thumbnail.png">
          <source src="<%=request.getContextPath()%>/videos/Inauguration.mp4" type="video/mp4" />
          Your browser does not support the video tag or HTML5.
        </video>
      </center>
   </div>  
  </section>

  </div>
</div>


<div class="container">
  <section class="row heads">
  <h3>Welcome to CCS Directory</h3>
  <p>Be a part of CCS Students to learn more about Technologies.<br>
  Enjoy your life in college with our supportive dean and faculty members of <abbr title="College of Computer Studies">CCS</abbr>.
  </p>
    <div class="col-4">
      <div class="profile">
        <img src="<%=request.getContextPath()%>/images/faculty/ccs-dean.jpg" alt="ccs-dean" />
        <span class="name">Marlon V. Gamido</span>
        <span class="position">Dean, College of Computer Studies</span>
      </div>
    </div>
    
    <div class="col-4">
      <div class="profile">
        <img src="<%=request.getContextPath()%>/images/faculty/university-president.jpg" alt="ccs-dean" />
        <span class="name">Myrna Q. Mallari</span>
        <span class="position">University President</span>
      </div>
    </div>
    
    <div class="col-4">
      <div class="profile">
        <img src="<%=request.getContextPath()%>/images/faculty/associate-dean.jpg" alt="ccs-dean" />
        <span class="name">Engr. Edjie M. Delos Reyes</span>
        <span class="position">Associate Dean</span>
      </div>
    </div>
  </section>
  
    <p style="font-family: arial; font-size: 1.2em;">
    Be ready for your job, make your life easier, choose the best course that fit to your skills.</p>
</div>

<div class="container">

<h1 style="text-align: center;">Latest News</h1>
  <div class="row news">
 
  
  <% 
    count = 0;
  for(Article a : article.getNews()){ 
	  
  %>
    <div class="col-4" >
      <h3 style="font-family: corbel; font-size: 1.7em;"><%=a.getTitle() %></h3>		
      <p><%=a.getContent() %></p>
   	  <span class="date"><%=a.getDatePosted() %></span><br>
      <span class="postedBy">posted by <%=a.getPostedBy() %></span>
    </div>
   <% count++; if(count==3) break; } %>
 
  </div>
</div>

<jsp:include page="/jsp/footer.jsp"></jsp:include> 

</body>
</html>