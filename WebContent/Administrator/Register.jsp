<%
//Protects the pages
//if (session.getAttribute("username") == null && session.getAttribute("role") != "client") 
//{response.sendRedirect("ClientLogin.jsp");}
%>
<html>
<head>
<title>Admin Home</title>
		<script src="css/5grid/jquery.js"></script>
		<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
</head>
<body>





<!-- Header -->
<iframe src="HeaderIFrameAdmin.html" width=100% height=215></iframe>
<!-- End of Header -->


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
<h2>Registration</h2>
<p class="subtitle">&nbsp;</p>



<form action="RegisterProcess.jsp">



<table border="1" style="width:100%">
  <tr>
    <td>Username:</td>
    <td><input type="text" name="username"></td>
  </tr>
  <tr>
    <td>NRIC:</td>
    <td><input type="text" name="password"></td> 
  </tr>
    <tr>
    <td>Senior:</td>
    <td><input type="text" name="senior"></td> 
  </tr>
    <tr>
    <td>Name:</td>
    <td><input type="text" name="name"></td> 
  </tr>
    <tr>
    <td>Contact:</td>
    <td><input type="text" name="contact"></td> 
  </tr>
    <tr>
    <td>Address:</td>
    <td><input type="text" name="address"></td> 
  </tr>
    <tr>
    <td>NRIC:</td>
    <td><input type="text" name="postal"></td> 
  </tr>
  
</table>


<input type="submit" value="Submit">


</form>




</section>
</div>



<div class="3u">
<section class="box">
<h2>&nbsp;</h2>
<p class="subtitle">&nbsp;</p>
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

<!-- Footer -->
<iframe src="FooterConstant.html" width=100% height=150></iframe>
<!-- End of Footer -->

<!-- End of Code -->
</body>
</html>