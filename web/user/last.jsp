<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
.right {text-align: right;
}
</style>
</head>

<body>
 <%@ page language="java" %>
        <table width="993" height="102" border="0">
          <tr>
       
              <a href="main.jsp">Home</a> |
              <% if(session.getAttribute("user_name")==null) {
			%>
             
              <a href="logout.jsp">Logout</a>
              <%}%></td>
          </tr>
        </table>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
       
<%
     boolean flag = false; 
       
        String s1=request.getParameter("rating");
        String s2=request.getParameter("comments");
       
       
        
         
      
        PreparedStatement ps1,ps2;
        Connection con1,con2;
        ResultSet rs1,rs2;
       Class.forName("com.mysql.jdbc.Driver");
        con1=DriverManager.getConnection("jdbc:mysql://localhost:3308/jewel","root","admin");
      
         Statement st1=con1.createStatement();
       
          ps1= con1.prepareStatement("insert into rating(rating,comments) values (?,?)");
           
       
           
            ps1.setString(1,s1);
            ps1.setString(2,s2);
           
           
            con2=DriverManager.getConnection("jdbc:mysql://localhost:3308/jewel","root","admin");
            Statement st2=con2.createStatement();
            
            ps2= con2.prepareStatement("update rating set user_id = (select user_id from user) ");
          
         
               int insertResult = ps1.executeUpdate();
             if (insertResult!=0)
            {
                 out.println("Entered successfully");
            } 
int a=ps2.executeUpdate();
%>
        <br><hr>
      <p>Click <a href="logout.jsp
">here</a> to logout
   </p> 
 