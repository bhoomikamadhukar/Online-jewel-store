
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {	text-align: right;
}
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

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
        width: 100%;
    }
}
body {
    background-color: whitesmoke;
}
</style>
</head>

<body>
 <center>
   <table width="993" height="102" border="0">
     <tr>
     
       <td width="726" class="right"> <a href="rating.jsp">Rate us</a> | <a href="main.jsp">Home</a> |
 <% if(session.getAttribute("uname")==null) {
			%>
      <a href="login.jsp">Login</a>
      <%} else {
				%>
      <a href="logout.jsp"></a>
      <%}%></td>
     </tr>
   </table>
   <hr />
   <strong><em>Register here</em></strong>
   <form action="register.jsp"><table><b>
           
             <div class="container">
    <label><b>Userid</b></label>
    <input type="text" placeholder="Enter user_id" name="user_id" required>

    <label><b>UserName</b></label>
    <input type="text" placeholder="Enter user_name" name="user_name" required>

    <label><b>Email</b></label>
    <input type="text" placeholder="Enter email" name="email" required>

          <label><b>Password</b></label>
    <input type="password" placeholder="Enter password" name="password" required>
    

    <div class="clearfix">
      <button type="button"  class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
                    </form>
            <br><hr>
              Already Registered!! To Login <a href="login.jsp">Click Here</a>
                <hr>
                
    </center>
</body>
</html>