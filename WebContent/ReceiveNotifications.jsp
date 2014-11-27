<%@ page import="entity.Notifications"%><%
// Listens for Notification Requests
boolean verification = Notifications.thereIsNewNotifications();
if (verification == true){
	// Return notification string
	String notification = Notifications.getNotifications();
	out.println(notification);
}
else{
	out.print("NIL");
}%>