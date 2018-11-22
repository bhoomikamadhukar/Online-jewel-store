<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.name {
	font-weight: bold;
	font-size: 36px;
}
.gnrl {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.center1 {
	text-align: center;
}
.center1 table {
	font-family: Arial, Helvetica, sans-serif;
	font-size: x-large;
	font-weight: bold;
}
normal {
	font-weight: normal;
}
normal {
	font-weight: normal;
}
normal {
	font-weight: normal;
}
normal {
	font-family: Arial, Helvetica, sans-serif;
}
.right {
	text-align: right;
}
.norm {
	font-family: Arial, Helvetica, sans-serif;
}
body {
    background-color:cornsilk;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}
.signupbtn {
    float: left;
    width: 20%;
}
</style>
</head>

<body>
<table width="993" height="102" border="0">
  <tr>
   
    <td width="726" class="right"><a href="contact.jsp"></a> | <a href="main.jsp">Home</a> |
      <% if(session.getAttribute("user_name")==null) {
			%>
     
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr />
<p>
  <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
  <%
		String prod_id=request.getParameter("prod_name");
		
		 PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3308/jewel","root","admin");
      
      
         Statement st=con.createStatement();
		ps=con.prepareStatement("select * from product where prod_id=6003");
		
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
<p class="name"><%=rs.getString(4)%> <%=rs.getString(2)%> </p>
         
</p>
<table width="600" height="400" border="0">
  <tr>
      <td width="358" class="center1"><img src= width="300" height="200"></img></td>
    <%}
    ps=con.prepareStatement("select * from product where prod_id=6003");

		
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 %>
    <td width="623" class="center1"><table width="466" height="200" border="0">
      <tr>
        <td width="179" class="center1">Product Name :</td>
        <td width="277" class="normal"><%=rs.getString(2)%></td>
        <img src="${pageContext.request.contextPath}/resources/image3.jpg"width="300" height="300" align="centre"> 
       
      <tr>
        <td class="center1">Price :</td>
        <td><%=rs.getString(3)%></td>
      </tr>
      <tr>
        <td class="center1">Type:</td>
        <td><%=rs.getString(4)%></td>
      </tr>
      <%}%>
      
      
    </table>
    <p>
    <form action="orderconf3.jsp"> 
<input type="hidden" name="name" value=<%=prod_id%>> 
<div class="clearfix">
    
      <button type="submit" class="signupbtn">BUY!</button>
    </div>
    
</form></p></td>
  </tr>
</table>

