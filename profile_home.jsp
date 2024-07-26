<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>Home page with profile</title>
	
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">


	<link rel="stylesheet" href="css/menu.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<script src="js/jquery-latest.min.js"></script>
	<script src="js/script.js"></script>
    <script src="js/jquery183.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 
		  $("#slider").responsiveSlides({
			auto: true,
			pager: false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
		});
	</script>
	
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>

	<![endif]-->
		<style type="text/css">
			
			.profile{
				width: 80%;
				border: 10px solid lightyellow;
				height: 300px;
				background: #fff;
				border-radius: 20px;
				margin-left: 10px;
				
			}
			
						#customers {
			  font-family: Arial, Helvetica, sans-serif;
			  border-collapse: collapse;
			  width: 100%;
			}
			
			#customers td, #customers th {
			  border: 1px solid #ddd;
			  padding: 8px;
			}
			
			#customers tr:nth-child(even){background-color: #f2f2f2;}
			
			#customers tr:hover {background-color: #ddd;}
			
			#customers th {
			  padding-top: 12px;
			  padding-bottom: 12px;
			  text-align: left;
			  background-color: #04AA6D;
			  color: white;
			}
			.btn {
				 /* position: absolute;*/
				  bottom: 0;
				  left: 0;
				  width: 100%;
				  padding: 12px;
				  background: #FFCD02;
				  color: #fff;
				  font-size: 20px;
				  letter-spacing: 2px;
				  text-transform: uppercase;
				  cursor: pointer;
				  border-style: none;
				}


		</style>
    
</head>
<body>
<div class="wrap-body">

<!-- /////////////////////////////////////////Top -->
<div class="top">
	<div class="zerogrid">
		<div class="row">
			<div class="f-left">
				<span><i class="fa fa-map-marker"></i> Brooklyn, NY 10036, United States </span>
				<span><i class="fa fa-phone"></i> 1-800-123-1234; 1-800-123-5678</span>
				<span><i class="fa fa-envelope"></i> onlineBankIO.com</span>
			</div>
			<div class="f-right">
				<span>In banking or finance, trust is the only thing you have to sell.</span>
			</div>
		</div>
	</div>
</div>

<!--////////////////////////////////////Header-->
<header>
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
				   <li class='active'><a href="home.jsp">Home</a></li>
				   <li><a href="user_login.jsp">login</a></li>
				   <li><a href="#">About</a></li>
				   <li><a href="contact.jsp">Contact</a></li>
				</ul>
			</div>
			<a href='home.jsp' class="logo"><img src="img/logo.png" /></a>
		</div>
	</div>
</header>
<div class="bg-white">
	<div class="zerogrid">
		<!-- Slideshow -->
		<div class="callbacks_container">
			<ul class="rslides" id="slider">
				<li>
					<img src="img/slideshow-image1.jpg" alt="">
					<div class="caption">
						<h1>Welcome to Our Online Banking</h1>
						<span >“In banking or finance, trust is the only thing you have to sell.” </span>
					</div>
				</li>
				<li>
					<img src="img/slideshow-image2.jpg" alt="">
					<div class="caption">
						<h1>Welcome to Our Online Banking</h1>
						<span >“Business and life are like a bank account you can't take out more than you put in.”</span>
					</div>
				</li>
				<li>
					<img src="img/slideshow-image3.jpg" alt="">
					<div class="caption">
						<h1>Welcome to Our Online Banking</h1>
						<span >“Banking is very good business if you don't do anything dumb.”</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div>

<!--////////////////////////////////////Container-->
<section id="container" class="home-page">


<center>

<div class="profile">
	
  

  
<!-- -------------------------------------------------------------------------------------- -->
<table id="customers">

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
	<caption style="float:left; margin-bottom:10px;"><h3>My Profile Information</h3></caption>
		<td>My ID</td>
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
	
	<tr>
		<td><c:url value="updatecustomer.jsp" var="cusupdate">
	
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
	<input type="button" name="update" value="Update My Data" class="btn">
	</a></td>
	
	<td><c:url value="deletecustomer.jsp" var="cusdelete">
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
	<input type="button" name="delete" value="Delete My Account" class="btn">
	</a></td>
	
	
	</tr>
	
	
	
	</table>
	
	 
	
	<!-- ------------------------------------------------------- -->


</div>
</center><br><br>

<br>
<br><br>






	
			<section class="content-box box-2 box-style-3"><!--Start Box-->
				<div class="wrap-box">
					<div class="zerogrid">
						<div class="title">
							<h2><span>Our</span> Services</h2>
						</div>	
						<div class="row">
							<div class="col-1-4">
								<div class="wrap-col">
									<div class="item t-center">
										<div class="item-container">
											<a href="#">
												<div class="item-caption">
													<div class="item-caption-inner">
														<div class="item-caption-inner1"><!--
															<span class="user-social"><i class="fa fa-facebook"></i><i class="fa fa-twitter"></i><i class="fa fa-google-plus"></i><i class="fa fa-pinterest"></i></span>-->
														</div>
													</div>
												</div>
												<img src="img/user1.jpg" />
											</a>
										</div>
										<div class="item-content">
											<a href="#"><h3>BILL PAYMENT</h3></a>
											<p>online banking</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-1-4">
								<div class="wrap-col">
									<div class="item t-center">
										<div class="item-container">
											<a href="#">
												<div class="item-caption">
													<div class="item-caption-inner">
														<div class="item-caption-inner1"><!--
															<span class="user-social"><i class="fa fa-facebook"></i><i class="fa fa-twitter"></i><i class="fa fa-google-plus"></i><i class="fa fa-pinterest"></i></span>-->
														</div>
													</div>
												</div>
												<img src="img/user2.jpg" />
											</a>
										</div>
										<div class="item-content">
											<a href="#"><h3>LOAN APPLY</h3></a>
											<p>online banking</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-1-4">
								<div class="wrap-col">
									<div class="item t-center">
										<div class="item-container">
											<a href="#">
												<div class="item-caption">
													<div class="item-caption-inner">
														<div class="item-caption-inner1"><!--
															<span class="user-social"><i class="fa fa-facebook"></i><i class="fa fa-twitter"></i><i class="fa fa-google-plus"></i><i class="fa fa-pinterest"></i></span>-->
														</div>
													</div>
												</div>
												<img src="img/user3.jpg" />
											</a>
										</div>
										<div class="item-content">
											<a href="#"><h3>OPEN AN ACCOUNT</h3></a>
											<p>online banking</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-1-4">
								<div class="wrap-col">
									<div class="item t-center">
										<div class="item-container">
											<a href="#">
												<div class="item-caption">
													<div class="item-caption-inner">
														<div class="item-caption-inner1"><!--
															<span class="user-social"><i class="fa fa-facebook"></i><i class="fa fa-twitter"></i><i class="fa fa-google-plus"></i><i class="fa fa-pinterest"></i></span>-->
														</div>
													</div>
												</div>
												<img src="img/user4.jpg" />
											</a>
										</div>
										<div class="item-content">
											<a href="#"><h3>MONEY TRANSFER</h3></a>
											<p>online banking</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="content-box box-3 box-style-2"><!--Start Box-->
				<div class="wrap-box t-center">
					<div class="zerogrid">
						<div class="title">
							<h2>WELCOME <span>To Our Website</span></h2>
						</div>	
						<strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong>
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo</p>
						<a href="#" class="button bt1">Read More</a>
					</div>
				</div>
			</section>
		
<!--////////////////////////////////////Footer-->
<footer>

	<div class="zerogrid wrap-footer">
		<div class="row">
			<div class="col-1-4 col-footer-1">
				<div class="wrap-col">
					<h3>About Us</h3>
					<p>Ut volutpat consectetur aliquam. Curabitur auctor in nis ulum ornare. Sed consequat, augue condimentum fermentum gravida, metus elit vehicula dui.</p>
					<a href="index.html" class="logo"><img src="img/logo.png" /></a>
				</div>
			</div>
			<div class="col-1-4 col-footer-2">
				<div class="wrap-col">
					<h3>Categories</h3>
					<ul>
						<li><a href="#">Action</a></li>
						<li><a href="#">Romantic</a></li>
						<li><a href="#">Cartoon</a></li>
						<li><a href="#">Zombies</a></li>
					</ul>
				</div>
			</div>
			<div class="col-1-4 col-footer-3">
				<div class="wrap-col">
					<h3>Flickr Photos</h3>
					<div class="row">
						<div class="col-1-3">
							<div class="wrap-col">
								<a href="#"><img src="img/6.jpg" /></a>
								<a href="#"><img src="img/7.jpg" /></a>
								<a href="#"><img src="img/8.jpg" /></a>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<a href="#"><img src="img/9.jpg" /></a>
								<a href="#"><img src="img/6.jpg" /></a>
								<a href="#"><img src="img/7.jpg" /></a>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<a href="#"><img src="img/6.jpg" /></a>
								<a href="#"><img src="img/7.jpg" /></a>
								<a href="#"><img src="img/8.jpg" /></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-1-4 col-footer-4">
				<div class="wrap-col">
					<h3>Contact</h3>
					<span><i class="fa fa-envelope"></i> example@sports-club.com</span>
					<span><i class="fa fa-phone"></i> 1-800-123-1234; 1-800-123-5678</span>
					<span><i class="fa fa-map-marker"></i> Brooklyn, NY 10036, United States</span>
				</div>
			</div>
		</div>
	</div>
</footer>
<div class="copyright">
	<div class="zerogrid wrapper">
		Copyright @ zSoccer - Designed by <a href="https://www.zerotheme.com">ZEROTHEME</a>
		<ul class="quick-link f-right">
			<li><a href="#">Privacy Policy</a></li>
			<li><a href="#">Terms of Use</a></li>
		</ul>
	</div>
</div>

</div>
</body></html>