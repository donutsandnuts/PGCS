<%
String password = request.getParameter("password");
String username = request.getParameter("username");
if (password.equals("password") | password.equals("xxxx") | username.equals("username") | username.equals("donutsandnuts@gmail.com") ){response.sendRedirect("Home.jsp");}
else {response.sendRedirect("LoginFailed.jsp");}
%>