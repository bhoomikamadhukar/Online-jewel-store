<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Log in</title>
<style type="text/css">
.right {	text-align: right;
}




body {
    background-color:#ccccff;
}
form {
    border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    width: 20%
}

/* Avatar image */
img.avatar {
    width: 40%;
    border-radius: 50%;
}

/* Add padding to containers */
.container {
    padding: 16px;
}

/* The "Forgot password" text */
span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
    }
    .cancelbtn {
        width: 100%;
    }
}
</style>
</head>
<body>

</body>
</html>


</style>
<link href="italics.css" rel="stylesheet" type="text/css" />
</head>

<body>

<center> 
<form action="loginconf.jsp" method="post">
  <table width="993" height="102" border="0">
    <tr>
    
      <td width="726" class="right"><a href="rating.jsp">Rate Us</a> | <a href="main.jsp">Home</a> |
        <% if(session.getAttribute("uname")==null) {
			%>
        <a href="login.jsp">Login</a>
        <%} else {
				%>
        <a href="logout.jsp">Logout</a>
        <%}%></td>
    </tr>
  </table>
  <hr />
  <p>&nbsp;</p>
  <table width="20"> 
  <tr> 
<div class="imgcontainer">
    <img src="${pageContext.request.contextPath}/resources/avatars.png" alt="Avatar" class="avatar" width="12%">
  </div>

  <div class="container">
    <label><b>UserID:</b></label>
    <input type="text" placeholder="Enter User_id" name="user_id" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit">Login</button>
  
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>