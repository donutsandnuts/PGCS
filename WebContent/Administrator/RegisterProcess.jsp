<%@ page import="entity.RegisterClient" %>
<% 

String username = request.getParameter("username");
String password = request.getParameter("password");
String senior = request.getParameter("senior");
String name = request.getParameter("name");
String contact = request.getParameter("contact");
String address = request.getParameter("address");
String postal = request.getParameter("postal");


if (RegisterClient.verifyUsernameExist(username) == true & username != null){
	response.sendRedirect("RegisterFail.jsp");
}
else{
	RegisterClient.registerNewClient(username, password, senior, name, contact, address, postal);
	response.sendRedirect("AccountManagment.jsp");
}

%>



