<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="customer.DBConnect"%>  
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	   <%
		
	
		String id=request.getParameter("eid");
		String ename=request.getParameter("ename");
		String branch=request.getParameter("ebranch");
		String email=request.getParameter("email");
		String mobile=request.getParameter("emobile");
		String type=request.getParameter("Etype");
		
		
		try{
			
			Connection connection =null;
			connection =DBConnect.getConnection();
			PreparedStatement ps=connection.prepareStatement("update employee set name=?,branch_of_work=?,email=?,mobile=?,employee_type=? where id=?");
			
			ps.setString(1,ename);
			ps.setString(2,branch);
			ps.setString(3,email);
			ps.setString(4,mobile);
			ps.setString(5,type);
			ps.setString(6,id);
			
			ps.executeUpdate();
			response.sendRedirect("employee-list.jsp?=valid");
			
			
		}
		catch(Exception e){
			response.sendRedirect("employee-list.jsp?=invalid");
			//e.printStackTrace();
		}
		
		
	
	%>
		

</body>
</html>