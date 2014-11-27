<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name ="viewport" content="width=device-width, initial-scale=1"/>

<style>

<!---body {background-color:lightgray}---!>
  h1   {color:blue}
  p    {color:green}
  .table a
{
    display:block;
    text-decoration:none;
    width:"100%"
}
</style>


<body bgcolor="#E6E6FA">





<div align = "center">
<h2>

<a href="Profile.jsp"><img src="images/button_back.png" align="left"></a> 

Profile <a href="Home.jsp"><img src="images/button_menu.png" alt ="-.-"  align="right"></a> </h2>



<% String username="donutsandnuts@gmail.com";%>


 		<% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "xxxx");
            Statement statement = connection.createStatement() ;
            String query =  "";
            	   query += "SELECT name, contact, address, postal from clientlogin ";
            	   query += "WHERE username = 'donutsandnuts@gmail.com';";
            ResultSet resultset = statement.executeQuery(query) ; 
            System.out.println(query);
        %>


<!--  Sample Data Set ---->
<!--
<TR> <TH>Name</TH> 	<TD>Jeff</TD></TR>
<TR> <TH>Address</TH> 	<TD>25 Mill Rd</TD></TR>
<TR> <TH>Postal</TH> 	<TD>512345</TD></TR>
<TR> <TH>Contact</TH> 	<TD>98981234</TD></TR>
---->
<!--  Sample Data Set ---->


<form action="ProfileEditProcess.jsp" name="form" id="form">

<table border="1" class="table" >

<% while(resultset.next()){ %>
<!--  Real Data Set ---->
<TR>  <TD>Name</TD> 	<TD><input type="text" name="name" required maxlength="15" value="<%out.println(resultset.getString(1)); %>"></TD> </TR>
<TR>  <TD>Contact</TD> 	<TD><input type="text" name="contact" required maxlength="15" value="<%out.println(resultset.getString(2)); %>"></TD> </TR>
<TR>  <TD>Address</TD> 	<TD><input type="text" name="address" required maxlength="15" value="<%out.println(resultset.getString(3)); %>"></TD> </TR>
<TR>  <TD>Postal</TD> 	<TD><input type="text" name="postal" required maxlength="15" value="<%out.println(resultset.getString(4)); %>"></TD> </TR>
<!--  Real Data Set ---->
<%}%>



</table>

<br>

</form>

<button onclick="window.location='Profile.jsp';" >Cancel</button>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type="submit" value="Edit" form="form">


<br>
<br>




</div>



</body>
</html>