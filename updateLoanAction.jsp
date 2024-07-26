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
		
	
		String id=request.getParameter("lid");
		String loanType=request.getParameter("loanType");
		String prefix=request.getParameter("prefix");
		String minAmount=request.getParameter("minAmount");
		String maxAmount=request.getParameter("maxAmount");
		String interest=request.getParameter("interest");
		String terms=request.getParameter("terms");
		String status=request.getParameter("status");
		
		try{
			
			Connection connection =null;
			connection =DBConnect.getConnection();
			PreparedStatement ps=connection.prepareStatement("update loan set loanType=?,prefix=?,minAmount=?,maxAmount=?,interest=?,terms=?,status=? where id=?");
			
			ps.setString(1,loanType);
			ps.setString(2,prefix);
			ps.setString(3,minAmount);
			ps.setString(4,maxAmount);
			ps.setString(5,interest);
			ps.setString(6,terms);
			ps.setString(7,status);
			ps.setString(8,id);
			
			ps.executeUpdate();
			response.sendRedirect("loan-list.jsp?=valid");
			
			
		}
		catch(Exception e){
			response.sendRedirect("loan-list.jsp?=invalid");
			//e.printStackTrace();
		}
		
		
	
	%>
		

</body>
</html>