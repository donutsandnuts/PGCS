<%

String password = request.getParameter("password");
String username = request.getParameter("username");




// This piece of code temporarily replaces the database code
// A root or admin username will do
// 
//==================================================================================


if(password.equals("xxxx") & username.equals("admin")){
	String redirectURL = "AdminLoginTwoFactor.jsp";
	response.sendRedirect(redirectURL);
}


else if(password.equals("xxxx") & username.equals("root")){
	String redirectURL = "AdminLoginTwoFactor.jsp";
	response.sendRedirect(redirectURL);
}




else{
	String redirectURL = "LoginFailed.jsp";
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
