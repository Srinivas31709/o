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
body {
  background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
  background-size: 400% 400%;
  animation: gradient 15s ease infinite;
  height: 100vh;
}

@keyframes gradient {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}
</style>
</head>
<body>

<div class="d-flex flex-column justify-content-center w-100 h-100">

  <div class="d-flex flex-column justify-content-center align-items-center">
    
    
      <h3 align=center style="color: black"><u>View All Citizens</u></h3>

<table align=center border=2 style="color: black">

<tr>

<th>ID</th>
<th>Name</th>

<th>Email ID</th>
<th>Username</th>


</tr>

<c:forEach items="${cznlist}" var="czn">

<tr>

<td> <c:out value="${czn.id}"></c:out>   </td>
<td> <c:out value="${czn.name}"></c:out>   </td>

<td> <c:out value="${czn.emailid}"></c:out>   </td>
<td> <c:out value="${czn.username}"></c:out>   </td>

<td> 

<a href='<c:url value='deleteemp?id=${czn.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewcitizenbyid?username=${czn.username}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

      
   
  </div>
</div>


</body>
</html>

 
