<%
//Protects the pages
//if (session.getAttribute("username") == null && session.getAttribute("role") != "client") 
//{response.sendRedirect("ClientLogin.jsp");}
%>
<html>
<head>
<title>Control Panel</title>



		<script src="css/5grid/jquery.js"></script>
		<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>



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









<!-- Page Wrapper -->
<div id="wrapper" class="5grid-layout">



<!-- Banner Content -->

		
<div id="banner" class="row">
<div class="12u">
<section> 

			
<table style="width:100%">



      
  <tr>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
  </tr>
  



      
  <tr>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
  </tr>
  


  <tr>
    <td align="center" ><img src=images/image6.png></td>
    <td align="center" ><img src=images/image7.png></td>
    <td align="center" ><img src=images/image1.png></td>
    <td align="center" ><img src=images/image8.png></td>
  </tr>






      
  <tr>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
  </tr>
  


</table> 
</section>
</div>
</div>
<!-- End of Table -->












<!-- Marketing Content -->
<div id="marketing" class="row">
<div class="3u">
<section class="box">
<h2>Care</h2>
<p class="subtitle">Care</p>
<ul class="style1">
<li><a href="Maps.jsp">Maps</a></li>
<li><a href="Medicine.jsp">Medicine</a></li>
<li><a href="Appointments.jsp">Appointments</a></li>
<li><a href="Safety.jsp">Safety</a></li>
</ul>
</section>
</div>








<div class="3u">
<section class="box">
<h2>Charts</h2>
<p class="subtitle">Bar, Line, Polar, Pie</p>
<ul class="style1">

<li><a href="chart-bar.html">Bar Chart</a></li>
<li><a href="chart-polar-area.html">Polar Chart</a></li>
<li><a href="chart-line.html">Line Chart</a></li>
<li><a href="chart-pie.html">Pie Chart</a></li>

<li><a href="chart-doughnut.html">Doughnut Chart</a></li>
<li><a href="chart-radar.html">Radar Chart</a></li>
</ul>
</section>
</div>





<div class="3u">
<section class="box">
<h2>Control Center</h2>
<p class="subtitle">Control Center</p>
<ul class="style1">
<li><a href="#">Administrative Control Panel</a></li>
</ul>
</section>
</div>












<div class="3u">
<section class="box">
<h2>Others</h2>
<p class="subtitle">Others</p>
<ul class="style1">
<li><a href="#">###</a></li>
<li><a href="#">###</a></li>
<li><a href="#">###</a></li>
<li><a href="#">###</a></li>
<li><a href="#">###</a></li>
<li><a href="#">###</a></li>
</ul>
</section>
</div>
</div>
</div>







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










<!-- Header -->
<iframe src="FooterConstant.html" width=100% height=77></iframe>
<!-- End of Header -->












<!-- End of Code -->
</body>
</html>