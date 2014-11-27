

<%@ page import="entity.Feedback"%>



<%
String subject    =request.getParameter("subject");
String content    =request.getParameter("content");

// These fields may be NULL
String technical  =request.getParameter("Technical");
String ip         =request.getParameter("IP");
String feedback   =request.getParameter("Feedback");
String access     =request.getParameter("Access");
String other      =request.getParameter("Other");
%>






<% 
/*
if(subject !=null && content!=null){
	
	try {
		// // // // // // //
		Feedback.createFeedback(username, nric, name, contact, address, email, dateofbirth);
		response.sendRedirect("RegisterClientSuccess.jsp");
	} catch (Exception e) {
		response.sendRedirect("RegisterClientFailed.jsp");}}

else{
	response.sendRedirect("RegisterClientFailed.jsp");
}
*/
%>








<p>Technical = <%out.println(technical);%></p>
<p>IP = <%out.println(ip);%></p>
<p>Feedback = <%out.println(feedback);%></p>
<p>Access = <%out.println(access);%></p>
<p>Others = <%out.println(other);%></p>


<br> <br>


<p>Subject = <%out.println(subject);%></p>
<p>Content = <%out.println(content);%></p>








<% Feedback.createFeedback(subject, content, technical, ip, feedback, access, other);%>






