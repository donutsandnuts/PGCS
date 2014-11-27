<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>




<% String username = (String)session.getAttribute("username"); %>



<html>
<head>
<title>Home</title>



		<script src="css/5grid/jquery.js"></script>
		<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>



</head>
<body>





<!-- Header -->
<iframe src="HeaderIFrameProfile.html" width=100% height=215></iframe>
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

			

</section>
</div>
</div>
<!-- End of Table -->












<!-- Marketing Content -->
<div>
<div>
<section>





<style>
table, th, td {
    border: 2px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
</style>





















 		<% 
 		
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "xxxx");

            Statement statement = connection.createStatement() ;
            String query = "SELECT * from clientlogin ";
            	   query += "WHERE username = '" +username+ "'; ";
            ResultSet resultset = statement.executeQuery(query) ; 
            System.out.println(query);	
        %>




<form action="ProfileChangeProcess.jsp">


<table border="1" class="table" style="width:60%" >


<% while(resultset.next()){ %>

<!--  Real Data Set ---->
<TR>  <TD>Username</TD> 	 <TD>
<input type="text" name="username" readonly value="<%out.println(resultset.getString(1));  %>"></TD> 	</TR>


<TR>  <TD>Senior</TD> 	 <TD>
<input type="text" name="senior" value="<%out.println(resultset.getString(3));  %>"></TD> 	</TR>

<TR>  <TD>Name</TD>    <TD>
<input type="text" name="name" value="<%out.println(resultset.getString(4));  %>"></TD> 	</TR>

<TR>  <TD>Contact</TD>    <TD>
<input type="text" name="contact" value="<%out.println(resultset.getString(5));  %>"></TD> 	</TR>

<TR>  <TD>Address</TD> 	 <TD>
<input type="text" name="address" value="<%out.println(resultset.getString(6));  %>"></TD> 	</TR>

<TR>  <TD>Postal</TD>    <TD>
<input type="text" name="postal" value="<%out.println(resultset.getString(7));  %>"></TD> 	</TR>

<TR>  <TD>Secret Question</TD>    <TD>
<input type="text" name="secretquestion" value="<%out.println(resultset.getString(8));  %>"></TD> 	</TR>


<TR>  <TD>Secret Answer</TD>    <TD>
<input type="text" name="secretanswer" value="<%out.println(resultset.getString(9));  %>"></TD> 	</TR>

<!--  Real Data Set ---->



<%} %>





</table>


<input type="submit" value="Submit">


</form>


















<br> <br>

<div align="center">


 <form>
 </form> 


</div>


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