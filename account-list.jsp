<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="customer.DBConnect"%>   <!-- get connection from the inside customer package DB connect java file -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <%
    
        Connection connection =null;
        Statement statement =null;
        ResultSet resultSet =null;
        
    %>

<!DOCTYPE html>
<html>





<head>
  <title>Admin Panel of bank system</title>
  <!--cdn icon library -->
   <!--cdn icon library -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/sidebar.css">
  
	<style type="text/css">

			body{

		  background-image: url("img/912.jpg");
		  background-position: center;
		  background-size: cover;
		  height: 700px;
		  background-repeat: no-repeat;
      background-attachment: fixed;

		}
		.adminTopic{
			text-align: center;
			color: #fff;
			

		}

table
{
    width:99%;
    border-collapse: separate !important;
    margin:auto;
    /*/table-layout:fixed;/*/
    text-align:center;
    margin-top:50px;
    background-color: rgb(255, 255, 255);
    border-radius: 10px 10px 0px 0px;

}
table th
{
    border-bottom:2px solid rgb(187, 187, 187);
    padding:10px 0px 10px 0px;
    font-family: "balsamiq_sansitalic" !important;
}
table tr td
{
    border-right: 2px solid rgb(187, 187, 187);
    height: 58px;
    padding: 22px 0px 0px 0px;
    font-family: "monospace;" !important;
    border-bottom: 2px solid rgb(187, 187, 187);
    font-size: 20px;
}
table tr td a
{
    /*background-color: rgb(255, 196, 0);*/
    color: white;
    border-radius: 5px;
    padding: 6px;
    text-decoration: none;
    margin: 10px;
    font-weight: 700;
}

table tr td button:hover
{

	/*
    background: rgb(255, 255, 255);
    text-decoration:underline;
    color:tomato;
    padding: 4px;
    border:2px solid tomato;
    transition:background-color 0.2s;*/

    padding: 5px 5px 5px 5px;
	border: 2px solid yellow;
    border-radius: 7px;
    background-color: red;
    color: white;
    cursor: pointer;
}
button 
{
    padding: 5px 5px 5px 5x;
}
.addLoan{

	padding: 8px 12px 5px 12px;
	border: 2px solid yellow;
    border-radius: 7px;
    background-color: red;
    color: white;
    margin-left: 20px;
}

.addLoan:hover{

	background:red;
    padding: 7px 7px 7px 7px;
    cursor: pointer;

}


	</style>
</head>
<body>
	
	
	




  <input type="checkbox" id="check">

  <label for="check">
<i class="fa fa-bars" id="btn"></i>
<i class="fa fa-times" id="cancle"></i>


  </label>
  
         
  
  <div class="sidebar">
<header><img src="img/Re.png">
 <c:forEach var="add" items="${adminDetails}">
<p><i>hello </i>&nbsp</b>${add.username}</p>
</c:forEach>
</header>
<ul>


    <li><a href="loan-list.jsp">Manage Loans</a></li>
    <li><a href="employee-list.jsp">Manage Employee</a></li>
    <li><a href="account-list.jsp">Manage Account Type</a></li>
    <li><a href="#">Transaction</a></li>
    <li><a href="#">logout</a></li>
    
  <!--  <li><a href="#">Event</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Service</a></li>
    <li><a href="#">Contact</a></li>-->
    </ul>
 <!--  <li>
      <div class="social-links">
        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
        <a href="#" class="google-plus"><i class="fa fa-youtube"></i></a>
        
      </div>
    </li>-->
   

</div>
		
		
					<div style="float:right;font-weight:bold;">	
						
				    <c:forEach var="add" items="${adminDetails}">
						
				
					
							admin ID : ${add.id}<br>
							admin username : ${add.username}<br>
							admin password : ${add.password}<br>
					
					
				
				
					</c:forEach>
	
                  </div>

<div class="sidebar2">


		


        <table border="1">
        
            <tr>
            <caption><h1 style="font-family: monospace;">All Account Details </h1></caption><br>
            
                    <th>id</th>
                    <th>Account Type</th>
                    <th>prefix</th>
                    <th>Min Balance</th>                   
                    <th>interest</th>                 
                    <th>status</th>
                    <th>Edit</th>
                    <th>Delete</th>
                
    
          </tr>
          
            <%
            
            try{
                connection =DBConnect.getConnection();
                statement=connection.createStatement();
                String sql ="select * from account_type";
                resultSet = statement.executeQuery(sql);
                
            while(resultSet.next()){
                
            %>
<tr>

    <td><%=resultSet.getString("id") %></td>
    <td><%=resultSet.getString("acc_type") %></td>
    <td><%=resultSet.getString("prefix") %></td>
    <td><%=resultSet.getString("mini_balance") %>.00</td>    
    <td><%=resultSet.getString("interest") %>%</td>   
    <td><%=resultSet.getString("status") %>..</td>
    
    
    
    <td> <a href="updateAccount.jsp?id=<%=resultSet.getString("id") %>" class="up"><button class="addLoan">Edit</button></a></td>
             
                
    <td> <a href="deleteAccount.jsp?id=<%=resultSet.getString("id") %>" class="up"><button class="addLoan">Delete</button></a></td>


</tr>

    <%
        }
           connection.close();
           
        } catch (Exception e) {
            
           e.printStackTrace();
        }
    %>
</table> 

<br>

     <a href="account_type_insert.jsp">

        <button class="addLoan">
        
            Add Account Details
          
        </button>
     </a>  
              


</div>

</body>
</html>