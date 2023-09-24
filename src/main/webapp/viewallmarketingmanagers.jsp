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

<h3 align=center><u>View All Marketing Managers</u></h3>

<table align=center border=2>

<tr>

<th>ID</th>
<th>Name</th>
<th>Mobile No.</th>
<th>Email ID</th>
<th>Username</th>


</tr>

<c:forEach items="${marketingmanager}" var="m">

<tr>

<td> <c:out value="${m.id}"></c:out>   </td>
<td> <c:out value="${m.name}"></c:out>   </td>
<td> <c:out value="${m.mobileno}"></c:out>   </td>
<td> <c:out value="${m.emailid}"></c:out>   </td>
<td> <c:out value="${m.username}"></c:out>   </td>

<td> 

<a href='<c:url value='deletemanager?id=${g.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewgovtofficialbyid?username=${g.username}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>


</body>
</html>

 
