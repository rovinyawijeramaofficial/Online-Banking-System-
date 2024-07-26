<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="fname" value="${cus.fname}"/>
	<c:set var="lname" value="${cus.lname}"/>
	<c:set var="birth" value="${cus.birthDate}"/>
	<c:set var="mobile" value="${cus.mobile}"/>
	<c:set var="nic" value="${cus.nic}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer First Name</td>
		<td>${cus.fname}</td>
	</tr>
	<tr>
		<td>Customer LastName</td>
		<td>${cus.lname}</td>
	</tr>
	<tr>
		<td>Customer Birthdate</td>
		<td>${cus.birthDate}</td>
	</tr>
	
	<tr>
		<td>Customer phone</td>
		<td>${cus.mobile}</td>
	</tr>
	<tr>
		<td>Customer NIC</td>
		<td>${cus.nic}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.userName}</td>
	</tr>
	
	<tr>
		<td>Customer Password</td>
		<td>${cus.password}</td>
	</tr>
	
	

	</c:forEach>
	</table>
	
	 
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
	
		<c:param name="id" value="${id}" />
		<c:param name="fname" value="${fname}" />
		<c:param name="lname" value="${lname}" />
		<c:param name="birth" value="${birth}" />
		<c:param name="mobile" value="${mobile}" />
		<c:param name="nic" value="${nic}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	
	</c:url>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="fname" value="${fname}" />
		<c:param name="lname" value="${lname}" />
		<c:param name="birth" value="${birth}" />
		<c:param name="mobile" value="${mobile}" />
		<c:param name="nic" value="${nic}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Account">
	</a>
	
  
	
</body>
</html>