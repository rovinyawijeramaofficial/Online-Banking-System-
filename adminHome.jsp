<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
	<c:forEach var="add" items="${adminDetails}">
	
	
	<tr>
		<td>admin ID</td>
		<td>${add.id}</td>
	</tr>
	
	<tr>
		<td>Admin User Name</td>
		<td>${add.username}</td>
	</tr>
	
	<tr>
		<td>Admin Password</td>
		<td>${add.password}</td>
	</tr>
	
	

	</c:forEach>
	</table>
	
	 

</body>
</html>