<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

 <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<% 
       PreparedStatement ps1,ps2;
        Connection conn1,conn2;
        ResultSet rs1=null;
        ResultSet rs2;
       Class.forName("com.mysql.jdbc.Driver");
        conn1=DriverManager.getConnection("jdbc:mysql://localhost:3308/jewel","root","admin");
      
         Statement st1=conn1.createStatement();
         
;
%> 
<% 
boolean flag = false; 

String user_name= request.getParameter ("user_id"); 
String password = request.getParameter ("password"); 

%>

<% 
 
String sql = "SELECT user_name from user where user_id=? And password =?"; 

try {  
ps1 = conn1.prepareStatement (sql); 
ps1.setString (1,user_name); 
ps1.setString (2,password); 
rs1 = ps1.executeQuery (); 
if (rs1.next ()) { 
out.println (rs1.getString ("user_name")); 
flag = true; 
session.setAttribute("user_name", rs1.getString ("user_name")); 
} else { 
request.setAttribute("err", "user name or password error!"); 
}

rs1.close (); 
ps1.close (); 
conn1.close ();

} catch (Exception e) { 
out.println (e); 
}

%>

<% 

if (flag) { 

%>

<jsp:forward page="loginsucess.jsp" />

<%

} 
else { 
%>

<jsp:forward page="loginfail.jsp"/> 
<% 
} 
%>
</body>
</html>