<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<title>Admin Home</title>
</head>

<style>

<!---body {background-color:lightgray}---!>
  h1   {color:blue}
  p    {color:green}
  .table a
{
    display:block;
    text-decoration:none;
    width:"100%"
}
</style>


<body>


<!-- Header -->
<iframe src="HeaderIFrameAdmin.html" width=100% height=215></iframe>
<!-- End of Header -->



<div align = "center">




 		<% 
 		
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "xxxx");

            Statement statement = connection.createStatement() ;
            String query = "SELECT * ";
            query += "from clientlogin;";
            ResultSet resultset = statement.executeQuery(query) ; 
			System.out.println(query);
        
        %>







<table border="1" class="table" width="100%" >



<TR>
    <TH>Username</TH>
    <TH>Name</TH>
    <TH>Contact</TH>
    <TH>Address</TH>
    <TH>Postal</TH>
</TR>


<% while(resultset.next()){ %>

<%String linkID = resultset.getString(1);  %>


<TR>
	<TD> <%out.println(resultset.getString(1)); %></TD>
	<TD> <%out.println(resultset.getString(4)); %></TD>
	<TD> <%out.println(resultset.getString(5)); %></TD>
	<TD> <%out.println(resultset.getString(6)); %></TD>
	<TD> <%out.println(resultset.getString(7)); %></TD>
	<TD onclick = "deletePost()"> <a href="ResetPassword2.jsp?username=<%=linkID%>">	Reset Password</a></TD>
	

	
</TR>

<% } %>




</table>

	



<script>
function deletePost() {
        window.alert("Account Password Reset Done.");

}
</script>






</div>

</body>
</html>