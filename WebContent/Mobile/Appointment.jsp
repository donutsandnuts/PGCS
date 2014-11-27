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
<a href="Home.jsp"><img src="images/button_back.png" align="left"></a>
Appointments
<a href="Home.jsp"><img src="images/button_menu.png" align="right"></a> </h2>



 		<% 
 		
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "xxxx");

            Statement statement = connection.createStatement() ;
            String query = "SELECT id, date, time, place, postal, doctor ";
            query += "from appointment;";
            ResultSet resultset = statement.executeQuery(query) ; 
			System.out.println(query);
        
        %>







<table border="1" class="table" >



<TR>
    <TH>Date</TH>
    <TH>Time</TH>
    <TH>Postal</TH>
</TR>


<% while(resultset.next()){ %>

<%String linkID = resultset.getString(1);  %>


<TR>
	<TD> <a href="AppointmentDetails.jsp?id=<%=linkID%>">	<%out.println(resultset.getString(2)); %> </a></TD>
	<TD> <a href="AppointmentDetails.jsp?id=<%=linkID%>">	<%out.println(resultset.getString(3)); %> </a></TD>
	<TD> <a href="AppointmentDetails.jsp?id=<%=linkID%>">	<%out.println(resultset.getString(5)); %> </a></TD>
</TR>

<% } %>




</table>

	










</div>

</body>
</html>