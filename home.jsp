<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>User Home page bankig system</title>
	<meta name="description" content="online banking system">
	<meta name="author" content="online banking syatem">
	
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
				<span><i class="fa fa-envelope"></i> bankingIO.com</span>
			</div>
			<div class="f-right">
				<span>In banking or finance, trust is the only thing you have to sell. </span>
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
				   <li><a href="admin_login.jsp">staff</a></li>
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








	
			<section class="content-box box-3 box-style-2"><!--Start Box-->
				<div class="wrap-box t-center">
					<div class="zerogrid">
						<div class="title">
							<h2>WELCOME <span>To Our Online Banking</span></h2>
						</div>	
						<strong>The advantage of online banking is that you can pay bills superfast, and your account is automatically credited or debited for each deposit and payment, making it easier to stay on track.</strong>
						<p>Banking, as far as I can tell, seems to be almost as precise a science as using a slot machine. You either blindly hope for the best, delude yourself into thinking you've worked out a system, or open it up when no one's looking and rig the settings so it'll pay out illegally.</p>
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
					<a href="home.jsp" class="logo"><img src="img/logo.png" /></a>
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
		Copyright @ zSoccer - Designed by <a href="https://www.zerotheme.com">Ranasinghe</a>
		<ul class="quick-link f-right">
			<li><a href="#">Privacy Policy</a></li>
			<li><a href="#">Terms of Use</a></li>
		</ul>
	</div>
</div>

</div>
</body></html>