<!DOCTYPE html>
<html>
<head>
<style>
body {margin:0;}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>

<div class="topnav">
  <a class="active" href=login.jsp>LOGIN</a>
  <a href=reg.jsp>SIGN UP</a>
  

</div>

<div style="padding-left:16px">
  <tr>
                <td width="1000">
<input type="hidden" name="product" value="S002">
<p>TREASURE TROVE</p>
<input name="buy" type="image" value="s4" src="${pageContext.request.contextPath}/resources/image2.jpg" width="1500" height="800"> 
</form></td>
</div>

</body>
</html>
