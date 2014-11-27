<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name ="viewport" content="widTD=device-widTD, initial-scale=1"/>

<style>

<!---body {background-color:lightgray}---!>
  h1   {color:blue}
  p    {color:green}
  .table a
{
    display:block;
    text-decoration:none;
    widTD:"100%"
}
</style>


<body bgcolor="#E6E6FA">





<div align = "center">

<a href="Home.jsp"><img src="images/button_back.png" align="left"></a>
<h2>Appointment Detail<a href="Home.jsp"><img src="images/button_menu.png" alt ="-.-"  align="right"></a> </h2>



<% String appointmentID = request.getParameter("id"); %>
<% if(appointmentID == null) {  appointmentID = "1";} %>


 		<% 
 		
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "xxxx");

            Statement statement = connection.createStatement() ;
            String query = "SELECT * from appointment ";
            	   query += "WHERE id = '" +appointmentID+ "'; ";
            ResultSet resultset = statement.executeQuery(query) ; 
            System.out.println(query);	
        %>







<table border="1" class="table" >

<% while(resultset.next()){ %>

<!--  Real Data Set ---->
<TR>  <TD>ID</TD> 	 <TD><%out.println(resultset.getString(1)); %></TD> 	</TR>
<TR>  <TD>Date</TD> 	 <TD><%out.println(resultset.getString(3)); %></TD> 	</TR>
<TR>  <TD>Postal</TD> 	 <TD><%out.println(resultset.getString(5));  %></TD> 	</TR>
<TR>  <TD>Long</TD>    <TD><%out.println(resultset.getString(8)); %></TD> 	</TR>
<TR>  <TD>Lat</TD>    <TD><%out.println(resultset.getString(9)); %></TD> 	</TR>

<!--  Real Data Set ---->



<%} %>




</table>

<br>
<br>


<!-- <img src="images/button_app_del.png" onclick="deletePost();"> -->




<script type="text/javascript">
function deletePost() {
    var ask = window.confirm("Are you sure you want to delete this appointment?");
    if (ask) {
        window.alert("The appointment was successfully deleted.");
        document.location.href = "AppointmentDelete.jsp?id=<%=appointmentID%>";
    }
}
</script>



</div>



</body>
</html>