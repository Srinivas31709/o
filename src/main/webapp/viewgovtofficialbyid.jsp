<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: lightgreen;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
body::before {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  z-index: -1;
  background: var(--color-black);
  background-image: linear-gradient(115deg,
      #F5D4CD,
      #8888ceb3),
    url(sample.jpg);
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}
</style>
</head>
<body>


<br>


<br>

<h1 align=center>Welcome&nbsp;<c:out value="${auname}"></c:out></h1>

<br>

<table align=center border="=2">

<tr><th>ID:</th>&nbsp;<td>${go.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${go.name}</td></tr>
<tr><th>User Name:</th>&nbsp;<td>${go.username}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${go.emailid}</td></tr>
<tr><th>MobileNo.</th>&nbsp;<td>${go.mobileno}</td></tr>



</table>



</body>
</html>

 
