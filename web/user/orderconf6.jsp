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
    background-color:#ffcc66;
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
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}
</style>
</head>

<body>
<table width="993" height="102" border="0">
  <tr>
    
     <a href="main.jsp">Home</a> |
     
   
    <% if(session.getAttribute("user_name")==null) {
			%>
     
         <a href="login.jsp"></a>
        <%} else {
				%>
         <a href="logout.jsp">Logout</a>
         <%}%></td>
  </tr>
</table>

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
   request.getParameter("user_name"); request.getParameter("user_name");

    ps=con.prepareStatement("select * from orders where ord_id=6");

		
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		%>
    <td width="623" class="center1"><table width="466" height="200" border="0">
      <tr>
        <td width="179" class="center1">Order ID:</td>
        <td width="277" class="normal"><%=rs.getString(1)%></td>
        
       
      <tr>
        <td class="center1">Product Name: :</td>
        <td><%=rs.getString(2)%></td>
      </tr>
      <tr>
        <td class="center1">Amount:</td>
        <td><%=rs.getString(3)%></td>
      </tr>
      <tr>
        <td class="center1">Product ID: :</td>
        <td><%=rs.getString(4)%></td>
      </tr>
      <%}%>
      Please confirm your order Mr./Ms.<%=session.getAttribute("user_name")%>
      
    </table>
    <p>
    

    
    </div>
    

  </div>
</form></p></td>
  </tr>
</table>
<p>
    <form action="buy.jsp"> 
<input type="hidden" name="name" value=<%=prod_id%>> 
<div class="clearfix">
    
      <button type="submit" class="signupbtn">Proceed to payment</button>
    </div>
    
</form></p></td>
  </tr>
<p>
    <form action="main.jsp"> 
<input type="hidden" name="name" value=<%=prod_id%>> 
<div class="clearfix">
    
      <button type="submit" class="cancelbtn">Cancel</button>
    </div>
    
</form></p></td>
  </tr>
