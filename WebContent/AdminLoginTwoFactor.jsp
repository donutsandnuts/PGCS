<title>2FA Login</title>

	<div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #036000; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #036100; border-radius: 5px 5px 0px 0px; padding: 15px;">
	<span style="font-family: verdana,arial; color: #D4D400; font-size: 1.00em; font-weight:bold;">Admin | Silver Vitality</span></div>
	<div style="background: ; padding: 15px">
	<style type="text/css" scoped>
	td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; width: 100%; }
	input[type="button"], input[type="reset"], input[type="submit"] { height: auto; width: auto; cursor: pointer; 
	box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	table.center { margin-left:auto; margin-right:auto; }
	.error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style>
<form  action="AdminLoginProcessFinal.jsp"  target="_top" id="2fa" name="2fa">
<table class='center'>
<tr><td>2FA Code:</td><td><input type="text" name="2fa" required></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="Submit" form="2fa"></td></tr>
<tr><td colspan=2>&nbsp;</td></tr>
</table>
</form>
</div></div></div>



<input type="hidden" name="sessionid" value="<%= session.getId() %>" form="2fa">




<% 
//================================================================================================================
// Get the session variable and store it in a hidden field
// When the code is entered and submitted, the session variable will also be submitted in the form
//================================================================================================================
%>