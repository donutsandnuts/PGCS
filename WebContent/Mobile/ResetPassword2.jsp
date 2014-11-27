<%@ page import="java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver");

String username = request.getParameter("username");
if(username != null){
	String driver = "com.mysql.jdbc.Driver";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/project", "root", "xxxx");

	String query = "UPDATE clientlogin SET password='1849' where username ='" + username + "'";
	Statement stmt = conn.createStatement();
	
	stmt.executeUpdate(query);
	System.out.println("\n");
	System.out.println("\n");
	System.out.println("\n");
	

	System.out.println("New Password for: "+username);
	System.out.println("1849");
	
	

	response.sendRedirect("Login.jsp");

}

else{
	response.sendRedirect("Login.jsp");
}


%>