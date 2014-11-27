<%@ page import="entity.AuthenticationSuite"%><%
String username  =request.getParameter("username");
String secretkey =request.getParameter("secretkey");
boolean verification = AuthenticationSuite.VerifyHTTPRequest(username, secretkey);%><%out.print("User is valid: "+verification);%>