<%String subject    =request.getParameter("one");
String content    =request.getParameter("two");
String technical  =request.getParameter("Technical");
String ip         =request.getParameter("IP");
String feedback   =request.getParameter("Feedback");
String access     =request.getParameter("Access");
String other      =request.getParameter("Other"); 
%><%out.print(technical+"|");%>
<%out.print(ip+"|");%>
<%out.print(feedback+"|");%>
<%out.print(access+"|");%>
<%out.print(other+"|");%>
<%out.print(subject+"|");%>
<%out.print(content);%>
<%@ page import="entity.Feedback"%><% Feedback.createFeedback(subject, content, technical, ip, feedback, access, other);%>