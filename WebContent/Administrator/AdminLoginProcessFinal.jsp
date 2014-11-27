
<%@ page import="entity.Login2FA" %>

<%
String otp = request.getParameter("otp");
String id  = request.getParameter("id");
%>



<!-- Session Information -->
<table style="width:40%" border=2 align="center">
  <tr>
    <td>Session ID</td>
    <td><%out.println(session.getId());%></td> 
  </tr>
  <tr>
    <td>Input 2FA</td>
    <td><%out.println(otp);%></td> 
  </tr>
    <tr>
    <td>2FA ID</td>
    <td><%out.println(id);%></td> 
  </tr>

</table>
<!-- Session Information -->



<br>


<h3 align="center">Comparing 2FA + Session ID with Database</h3>
<p align="center"><a href="AdminLogin.jsp">Admin Login</a></p>


<% 

boolean verification = Login2FA.checkOTP(id, otp);

if (verification == true){		
	session.setAttribute("role", "admin");
	response.sendRedirect("AdminHome.jsp");
}

else{
	response.sendRedirect("AdminLoginFailed.jsp");
}

%>




