<%@ page import="entity.Appointment" %>
<% 
//Get the input parameter
String id = request.getParameter("id");
%>
<% 
//Execute the function
try{Appointment.deleteAppointment(id);} 
catch (Exception ex){response.sendRedirect("Appointment.jsp");}
%>
<% 
//Redirect Code to appointments
response.sendRedirect("Appointment.jsp");
%>