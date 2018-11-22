<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body>
<%@ page language="java" %>
<table width="993" height="102" border="0">
  <tr>
   
    <td width="726" class="right"> <a href="main.jsp">Home</a> |
      <% if(session.getAttribute("user_name")==null) {
			%>
     
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr />
<% if(session.getAttribute("user_name")!=null) {
	session.invalidate();
	out.println("Successfully Logged out.");
	%>
    <script type="text/javascript"></script>
<%
}
else
{%>
you have already logged out. 
Click <a href="login.jsp">here</a> to login
<%}%>
</body>
</html>