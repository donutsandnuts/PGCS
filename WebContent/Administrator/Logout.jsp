<%
     String username=(String)session.getAttribute("username");
    if(username!=null)
        {
           out.println(username+", You have logged out successfully.");
           out.println("Thank You for using Silver Vitality Web Portal.");
           out.println("<a href=\"Login.jsp\">Login Again</a>");
        		   
           session.removeAttribute("username");
           session.removeAttribute("role");
        }
     else 
         {
         out.println("You were never logged in from the start. <a href=\"AdminLogin.jsp\"> Login</a>");
     }
%>