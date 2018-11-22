<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>REG</title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body>
 <%@ page language="java" %>
        <table width="993" height="102" border="0">
          <tr>
        
          
          </tr>
        </table>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
       
<%
     
       
        String s1=request.getParameter("user_id");
        String s2=request.getParameter("user_name");
        String s3=request.getParameter("email");
        String s4=request.getParameter("password");
		
        PreparedStatement ps;
        Connection con;
        ResultSet rs;
       Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3308/jewel","root","admin");
      
        String strProcedure="{call entry(?,?,?,?)}"; //your procedure name
CallableStatement cs=con.prepareCall(strProcedure);
cs.setString(1,s1); 
cs.setString(2,s2); 
cs.setString(3,s3); 
cs.setString(4,s4); 
      	
// assume i is an integer variable;	

cs.execute();


        %>
        <br><hr>
               To Login <a href="login.jsp">Click Here</a>
                <hr>
</body>
</html>