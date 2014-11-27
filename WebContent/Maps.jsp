
<%
//Protects the pages
//if (session.getAttribute("username") == null && session.getAttribute("role") != "client") 
//{response.sendRedirect("ClientLogin.jsp");}
%>


<html>
<head>
<title>Home</title>



		<script src="css/5grid/jquery.js"></script>
		<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>

		<script	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false"> </script>

<script>
var myCenter=new google.maps.LatLng(1.379300, 103.8500);
var marker;

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:16,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

marker=new google.maps.Marker({
  position:myCenter,
  animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>






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




<!-- Lines Of Separations -->
<br> <br>
<!-- Lines Of Separations -->







	<br> <br>
	<script>function goBack() {window.history.back()}</script>
	<button onclick="goBack()">Go Back</button>
	<br> <br>







<!-- Current Location -->
<center>
<h3>Current Location</h3>
</center>
<!-- Current Location -->



<br>
<br>







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


<br><br>
<br>
<div align="center"><a href="MapsDetails.jsp">Example - Detailed Location Data</a></div>

<br>
<div align="center"><a href="#">Detailed Location Data</a></div>


<br>
<div align="center"><a href="LatLongConverter.jsp">Latitude Longitude Converter</a></div>
<!-- End of Table -->
















<!-- Page Content -->
<div id="page" class="row">

				
<!-- Content Area -->
<div id="content" class="8u">
			
</div>
	
<!-- Sidebar Area -->
<div id="sidebar" class="4u">
				
<!-- Sidebar Section 1 -->
<section id="box1">
						
</section>

</div>
</div>
<!-- Page Content -->

<!-- Wrapper Ends Here -->






<!-- Copyright -->
<div class="5grid-layout" id="copyright">
<div class="row">
<div class="12u">
<p>&copy; Silver Vitality | Design: <a href="#">Team X</a></p>
</div>
</div>
</div>

<!-- End of Code -->
</body>
</html>