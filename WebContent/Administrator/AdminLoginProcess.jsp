
<%@ page import="entity.Login2FA" %>
<%

String password = request.getParameter("password");
String username = request.getParameter("username");




// This piece of code temporarily replaces the database code
// A root or admin username will do
// 
//==================================================================================


if(password.equals("xxxx") || password.equals("password")  & username.equals("admin")){
	String id = Login2FA.generateOTP("admin");
	String redirectURL = "AdminLoginTwoFactor.jsp?id="+id;
	response.sendRedirect(redirectURL);
}


else if(password.equals("xxxx") & username.equals("root")){
	String id = Login2FA.generateOTP("admin");
	String redirectURL = "AdminLoginTwoFactor.jsp?id="+id;
	response.sendRedirect(redirectURL);
}




else{
	String redirectURL = "AdminLoginFailed.jsp";
	response.sendRedirect(redirectURL);
}


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

//
//==================================================================================






%>
