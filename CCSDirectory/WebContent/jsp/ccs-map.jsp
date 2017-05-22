<!DOCTYPE html>
<html lang="en-US">
<head>
<title>CCS MAP</title>
<meta charset="utf-8" />
<meta name="description" content="College of Computer Studies at Tarlac State University" />
<meta name="keywords" content="CCS,CCS at TSU,College of Computer Studies" />
<meta name="author" content="Ivan Arnie Ranario" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid-layout.css" />
<style>
  select,button{
    width: 20%;
    padding: 8px;
    font-weight: bold;
    font-family: consolas;
    color: #444;
    font-size: 1.3em;
    cursor: pointer;
  }
</style>
</head>

<body>

<jsp:include page="/jsp/navigation.jsp"></jsp:include>
<br>

<%@page import="com.ccsdirectory.model.*,java.util.List" %>
<%! Cmap map = new Cmap(); 
	String roomName = "";
%>

<div class="container">

  <h1 style="color: #2197E8;">CCS MAP</h1>
  <form>
    Select a room and i will show you the schedule:<br>
    <select id="selectedRoom">
    <% List<String> rooms = map.getRooms();
       for(int x=0; x<rooms.size(); x++) {
    %>
      <option><%=rooms.get(x) %></option>
    
    <% } %>
    </select>
    <button type="button" onclick="view();">View Schedule</button>
  </form>
  
  
    <script type="text/javascript">
        function view(){
            var selectedRoom = document.getElementById("selectedRoom").value;
            window.location.replace("ccs-map.jsp?selectedRoom="+selectedRoom);
        }
    </script>
    <%
      roomName = request.getParameter("selectedRoom");  
      if(roomName == null)
    	  roomName = "";
      
    %>
  
  

   <section class="row" id="maps">
		<article class="col-12" style="overflow-x: auto;">
			<h3 style="text-align:center;"><%=roomName %></h3>
			<table style="text-align: left;">
			  <tr>
			    <th>Day</th>
			    <th>Start Time</th>
			    <th>End Time</th>
			    <th>Section</th>
			    <th>Subject</th>
			    <th>Faculty</th>
			  </tr>
			  
		  <% map.setCondition("WHERE room.room_name = ?");
		  	 map.setValue(roomName);
		  	 
		  	 for(Schedule sched : map.getSchedules()) {
		  		 
		  %>
			  <tr>
			    <td><%=sched.getDay() %></td>
			    <td><%=sched.getStartTime() %></td>
			    <td><%=sched.getEndTime() %></td>
			    <td><%=sched.getSection() %></td>
			    <td><%=sched.getSubjectName() %></td>
			    <td><%=sched.getFaculty() %></td>
			  </tr>
		  <% } %>
			  
			</table>
			
		</article>
   </section>
   
   
   
</div>

<jsp:include page="/jsp/footer.jsp"></jsp:include> 

</body>
</html>