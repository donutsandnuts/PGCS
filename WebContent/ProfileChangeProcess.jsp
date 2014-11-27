<%@ page import="entity.Profile" %>

<%

String username = request.getParameter("username");
String senior = request.getParameter("senior");
String name = request.getParameter("name");
String contact = request.getParameter("contact");
String address = request.getParameter("address");
String postal = request.getParameter("postal");
String secretquestion = request.getParameter("secretquestion");
String secretanswer = request.getParameter("secretanswer");






Profile.editProfile2(username, senior, name,  contact,  address,  postal, secretquestion,  secretanswer );


response.sendRedirect("Profile.jsp");

%>