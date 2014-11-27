<% 
session.removeAttribute("username");
session.removeAttribute("senior");
//session.removeAttribute("senior");
//session.removeAttribute("senior");
session.invalidate();

// Redirect Code Here //
// Login.jsp //

%>