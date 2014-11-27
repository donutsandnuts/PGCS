<%
    String username=(String)session.getAttribute("username");
    if(username!=null)
        {
           session.removeAttribute("username");
           session.removeAttribute("role");
           response.sendRedirect("Login.jsp");
        }
     else 
         {
         response.sendRedirect("Login.jsp");
     }
%>