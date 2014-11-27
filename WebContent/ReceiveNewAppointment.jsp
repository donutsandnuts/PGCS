<%@ page import="entity.Appointment" %>
<%
// Get a new appointment and 
// Only care for the postal code
// Ignore the rest for now

String datetime = request.getParameter("datetime");

// Important***
String postal = request.getParameter("postal");
String title = request.getParameter("title");
String body = request.getParameter("body");
out.println("Received Already Konan");

System.out.println(datetime);
System.out.println(postal);
System.out.println(title);
System.out.println(body);

Appointment.createAppointment(postal);

%>