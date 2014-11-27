<%@ page import="entity.Profile" %>
<% 
//Get the input parameter
String username = "donutsandnuts@gmail.com";
String name = request.getParameter("name");
String contact = request.getParameter("contact");
String address = request.getParameter("address");
String postal = request.getParameter("postal");
%>
<% 
//Execute the function
try{Profile.editProfile(username, name, contact, address, postal);} 
catch (Exception ex){response.sendRedirect("Profile.jsp");}
%>
<% 
//Redirect Code to appointments
response.sendRedirect("Profile.jsp");
%>