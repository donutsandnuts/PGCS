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
<a href="Appointment.jsp"><img src="images/button_back.png" align="left"></a> 
Add Appointment
<a href="Home.jsp"><img src="images/button_menu.png" alt ="-.-" align="right"></a> </h2>







<form action="AppointmentAddProcess.jsp">



<table border="1" class="table" >



<TR><TH>Date</TH>	<TD><input type="date" name="date" required></TD></TR>
<TR><TH>Time</TH>	<TD><input type="time" name="time" required></TD></TR>
<TR><TH>Place</TH>	<TD><input type="text" name="place" maxlength="16" required></TD></TR>
<TR><TH>Postal</TH>	<TD><input type="text" pattern="[0-9]{6}" name="postal" min="6" maxlength="6"  required></TD></TR>
<TR><TH>Doctor</TH>	<TD><input type="text" name="place" maxlength="16" required></TD></TR>


</table>

	
<br>

<input type="submit" value="Add">

</form>






</div>

</body>
</html>