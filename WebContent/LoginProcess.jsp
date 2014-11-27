<!-------
Created by Paul Low 122810E
------->


<%@ page language="java" %>
<%@ page import="entity.Login"%>

<%
/*
// First Check if any field is null
// Validation may have failed
if(request.getParameter("username")==null || request.getParameter("password")==null){
	response.sendRedirect("FailedLogin.jsp");
}


// If everything is fine, go ahead with verification
// Access the database using entity.Login
else{
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            if (username == null || password == null) {
            	response.sendRedirect("FailedLogin.jsp");
            }
            
            //Compare the username and password to the ones in the database
            if (Login.verifyUsernameExist(username) == true) {
            
            //If its true, assign a session, role and username
            //Then redirect
            	if(Login.verifyPassword(username, password)){
            		session.setAttribute("username", username);
                	session.setAttribute("role", "client");
                	response.sendRedirect("ClientHome.jsp");
            	}
            
           //Else, just reject the login 
           else{response.sendRedirect("FailedLogin.jsp");}
            	
            }
            
           //Else, just reject the login 
           else{response.sendRedirect("FailedLogin.jsp");}
            }
*/



//==================================================================================
// End of Code
//
//==================================================================================
// Code to compute MD5 Hashes
//
//==================================================================================
//==================================================================================
// Code to compare the MD5 Hashes
//
//==================================================================================
//==================================================================================
// Code to make decision & redirection
// 1) Issue session variable if correct and redirect to 2FA page
// 2) Redirect to login failed



//==================================================================================
// This piece of code temporarily replaces the database code
// A root or admin username will do
// 
//==================================================================================
%>




<%
String password = request.getParameter("password");
String username = request.getParameter("username");

if(password == null | username == null){	
	response.sendRedirect("LoginFailed.jsp");
}

else if(password.equals("xxxx") || password.equals("password") || password.equals("1234")  
		|| password.equals("username")  || password.equals("3256") || password.equals("1849")){
	session.setAttribute("username",username);
	response.sendRedirect("Home.jsp");
}

else{
	response.sendRedirect("LoginFailed.jsp");
}

%>


