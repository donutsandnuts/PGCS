
<br>
<br>



<!-- Session Information -->
<table style="width:40%" border=2 align="center">
  <tr>
    <td>Session ID</td>
    <td><%out.println(session.getId());%></td> 
  </tr>
  <tr>
    <td>Input 2FA</td>
    <td><%out.println(request.getParameter("2fa"));%></td> 
  </tr>
    <tr>
    <td>Username</td>
    <td><%out.println(session.getAttribute("username"));%></td> 
  </tr>
    <tr>
    <td>Role</td>
    <td><%out.println(session.getAttribute("role"));%></td> 
  </tr>
</table>
<!-- Session Information -->



<br>
<br>





<h3 align="center">Comparing 2FA + Session ID with Database ... ... ...</h3>
<h3 align="center">Give us some time, processing ... ... ...</h3>

<br>



<p align="center"><a href="AdminLogin.jsp">Admin Login</a></p>






<%
// 
// 
// 
// 
// 
%>