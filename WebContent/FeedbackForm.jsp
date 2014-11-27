<%
//Protects the pages
//if (session.getAttribute("username") == null && session.getAttribute("role") != "client") 
//{response.sendRedirect("ClientLogin.jsp");}
%>
<html>
<head>
<title>Feedback</title>



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
  


</table> 
</section>
</div>
</div>
<!-- End of Table -->












<!-- Marketing Content -->
<div id="marketing" class="row">






<div class="3u">
<section class="box">
<h2>&nbsp;</h2>
<ul class="style1">
</ul>
</section>
</div>






<div class="3u">
<section class="box">
<h2>Feedback & Inquiry</h2>
<p class="subtitle">We Value Your Opinions</p>


<br>
<br>



Subject: <input type="text" name="subject" required form="send">




<p class="subtitle">&nbsp;</p>
<p>Select one or more inquiry type[s]:</p>


<br>
<input type="checkbox" name="Technical" value="true" form="send">
Technical


<br>
<input type="checkbox" name="IP" value="true" form="send">
Intellectual Property

<br>
<input type="checkbox" name="Feedback" value="true" form="send">
Feedback

<br>
<input type="checkbox" name="Access" value="true" form="send">
Accessibility

<br>
<input type="checkbox" name="Other" value="true" form="send">
Other










</section>
</div>







<div class="3u">
<section class="box">







<br>
<br>
<br>
<br>
<br>
<br>




<div align="justify">
<form id="send" name="send" action="FeedbackFormProcessor.jsp" method="get">
<textarea name="content" rows="10" cols="50" maxlength="90" required></textarea>
<p> [Max: 90 Characters]</p>
<input type="submit" value="Submit Feedback">
</form> 
</div>



</section>
</div>








<div class="3u">
<section class="box">
<h2>&nbsp;</h2>
<ul class="style1">
</ul>
</section>
</div>








</div>
</div>

















<!-- Page Content -->

<!-- Wrapper Ends Here -->










<!-- Footer -->
<iframe src="FooterConstant.html" width=100% height=150></iframe>
<!-- End of Footer -->












<!-- End of Code -->
</body>
</html>