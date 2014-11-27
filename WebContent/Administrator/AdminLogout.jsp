<%
     String username=(String)session.getAttribute("username");
    if(username!=null)
        {
           session.removeAttribute("username");
           session.removeAttribute("role");
           response.sendRedirect("AdminLogin.jsp");
        }
     else 
         {
         response.sendRedirect("AdminLogin.jsp");
     }
%>