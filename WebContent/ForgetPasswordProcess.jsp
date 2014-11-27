
<%@ page import="java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver");

String username = request.getParameter("username");

String secret = request.getParameter("secret");

if(username != null){
	String driver = "com.mysql.jdbc.Driver";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/project", "root", "xxxx");

	String query = "SELECT secretanswer from clientlogin where username ='" + username + "'";
	Statement stmt = conn.createStatement();
	

    ResultSet resultset = stmt.executeQuery(query) ; 
	System.out.println(query);
	
	String dbSecret = "";
	
	while(resultset.next()){
		dbSecret+=resultset.getString(1);
	}
	
	
	
	String convertedSecret = secret.toLowerCase();
	convertedSecret = convertedSecret.replaceAll("\\s+","");
	
	if(convertedSecret.equals(dbSecret)){
		response.sendRedirect("ResetPasswordProcess.jsp?username="+username);
	}
	else{
		response.sendRedirect("Login.jsp");
	}
	
	
	
}

else{
	response.sendRedirect("Login.jsp");
}


%>






