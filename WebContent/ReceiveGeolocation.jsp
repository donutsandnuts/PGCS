<%@ page import="entity.GeoFencer"%>
<%
String latitude =request.getParameter("latitude");
String longitude =request.getParameter("longitude");
GeoFencer.receiveGeolocation(latitude, longitude);
out.println("Received. Thank You.");
%>