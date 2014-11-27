
<%
//Protects the pages
//if (session.getAttribute("username") == null && session.getAttribute("role") != "client") 
//{response.sendRedirect("ClientLogin.jsp");}
%>


<html>
<head>
<!-- <meta http-equiv="refresh" content="5"> -->


<title>Home</title>



		<script src="css/5grid/jquery.js"></script>
		<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
		<script	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false"> </script>





<script>
var x = new google.maps.LatLng(1.3796137,103.8488417);
var y = new google.maps.LatLng(1.3800204,103.8463418);
var z = new google.maps.LatLng(1.3796137,103.8488417);
var a = new google.maps.LatLng(1.3778743,103.8487588);
var b = new google.maps.LatLng(1.3767628,103.8479595);
var c = new google.maps.LatLng(1.374365,103.8480166);

function initialize()
{
var mapProp = {
  center:x,
  zoom:16,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var myTrip=[y,z,a,b,c];
var flightPath=new google.maps.Polyline({
  path:myTrip,
  strokeColor:"#F0000F",
  strokeOpacity:0.8,
  strokeWeight:2
  });

flightPath.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>



<style>
table, th, td {
    border: 2.5px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
</style>







</head>
<body>








<!-- Header -->
<iframe src="HeaderIFrame.html" width=100% height=215></iframe>
<!-- End of Header -->





<!-- Session Information -->
<p><%//out.println("Session ID = "+session.getId());%></p>
<p><%//out.println("&nbsp; &nbsp; &nbsp; Logged in as : "+session.getAttribute("username"));%></p>
<p><%//out.println("Role       = "+session.getAttribute("role"));%></p>
<p><%//out.println("&nbsp; &nbsp; &nbsp; Role : "+session.getAttribute("role"));%></p>
<!-- Session Information -->







	<script>function goBack() {window.history.back()}</script>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
	<button onclick="goBack()">Go Back</button>








<!-- Page Wrapper -->
<div id="wrapper" class="5grid-layout">




<!-- Banner Content -->
<div id="banner" class="row">
<div class="12u">
<section> 

		
		
<!-- Start of Table -->			
<div id="googleMap" style="width:1000px;height:800px; margin-left: auto; margin-right: auto;"></div>
</section>
</div>
</div>












<div align="center">

<table style="width:60%">
  <tr>
    <th><b>Time</b></th>
    <th><b>Date</b></th>	
    <th><b>Longitude</b></th>
    <th><b>Latitude</b></th>
  </tr>



    <tr>
    <td>1220</td>
    <td>20/11/14</td>		
    <td>1.374365</td>
    <td>103.8480166</td>
  	</tr>
  
  
  
  
  
    <tr>
    <td>1215</td>
    <td>20/11/14</td>		
    <td>1.3767628</td>
    <td>103.8479595</td>
    </tr>
  
  
  
    <tr>
    <td>1210</td>
    <td>20/11/14</td>		
    <td>1.3796137</td>
    <td>103.8488417</td>
    </tr>
  
  
    <tr>
    <td>1205</td>
    <td>20/11/14</td>		
    <td>1.3800204</td>
    <td>103.8463418</td>
    </tr>
  
  
  

  

</table>


</div>

</div>
<!-- End of Table -->







<!-- Page Content -->
<div id="page" class="row">
<!-- Content Area -->
<div id="content" class="8u"></div>
	
<!-- Sidebar Area -->
<div id="sidebar" class="4u">
				
<!-- Sidebar Section 1 -->
<section id="box1">						
</section>

</div>
</div>



<!-- End of Code -->
</body>
</html>