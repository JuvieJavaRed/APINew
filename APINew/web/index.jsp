<%-- 
    Document   : index
    Created on : 05 May 2017, 6:13:10 PM
    Author     : Sindiso
--%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Payment Gateway</title>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.api.model.Company" %>
<% Company c = (Company)request.getAttribute("company"); %>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Educative Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 

<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
<!--//web-fonts-->
<!--//fonts-->
<!-- js -->
</head>
<body>
<!-- banner -->
	<div class="banner" id="home">
		<!-- header -->
		<header>
			<div class="container">

			<!-- navigation -->
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>				  
				<div class="w3-logo">
					<h1><a href="index.jsp">Payment Gateway</a></h1>
					<label></label>
				</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav">
					<li><a class="active" href="index.html">Home</a></li>
					<li><a href="code_examples.jsp"></a>Code Examples</li>
					<li><a href="gallery.html"></a></li>
					
					<li><a href="contact.html"></a></li>
				  </ul>
				 <div class="subscribe">
                                     <h5 style="color: black"><%= c.getRegistered_name() %></h5>
				</div>
				</div><!-- /.navbar-collapse -->
				 
			</nav>
			<div class="clearfix"></div>
		<!-- //navigation -->
			</div>
		</header>
	<!-- //header -->
	<!-- banner-text -->
		<div class="banner-text"> 
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-info">
							<h3>Electronic payment</h3>
							<h4> Take your business to the next level</h4>
						
						</div>
					</li>
					<li>
					
						<div class="slider-info">
							 <h3>Place to achieve secure payments</h3>
							<h4> Online payments that are safe, secure and fast</h4>
							
						   
						</div>
					</li>
					
					<li>
						
						<div class="slider-info">
							 <h3>We are the best choice</h3>
							<h4> Creating an easy way for you to receive online payments </h4>
						   
						</div>
					</li>

				</ul>
				
			</div>
			<div class="clearfix"></div>	
		</div>
	</div>
<!-- //banner -->
<!--services-section-->
<div class="services-w3layouts" id="services">
	<div class="container">	
	<div class="head-top-w3ls"><i class="fa fa-graduation-cap" aria-hidden="true"></i></div>
		<h5 class="title-w3">About Services</h5>
		<div class="w3-agileits-our-advantages-grids">
				<div class="col-md-4 w3layouts-our-advantages-grid">
					<div class="col-xs-3 w3l-our-advantages-grd-left">
						<i class="fa fa-flask" aria-hidden="true"></i>
					</div>
					<div class="col-xs-9 w3l-our-advantages-grd-right">
						<h4>Creative API</h4>
						<p>We have simplified linking your application to our API. Developers can use multiple languages to connect to our API. So no matter what language your application was built in we will be sure to make sure that you are in business quickly. </p>
						<a href="single.html" data-toggle="modal" data-target="#myModal1" >Show code examples<span class="glyphicon glyphicon glyphicon-arrow-right" aria-hidden="true"></span></a>
						
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 w3layouts-our-advantages-grid">
					<div class="col-xs-3 w3l-our-advantages-grd-left">
						<i class="fa fa-graduation-cap" aria-hidden="true"></i>
					</div>
					<div class="col-xs-9 w3l-our-advantages-grd-right">
						<h4>Secure SSL</h4>
						<p>Our API does not store bank card details but instead encrypts them and sends them to their intended destination.</p>
						<a href="single.html" data-toggle="modal" data-target="#myModal1" >More details<span class="glyphicon glyphicon glyphicon-arrow-right" aria-hidden="true"></span></a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 w3layouts-our-advantages-grid">
					<div class="col-xs-3 w3l-our-advantages-grd-left">
						<i class="fa fa-pencil" aria-hidden="true"></i>
					</div>
					<div class="col-xs-9 w3l-our-advantages-grd-right">
						<h4>Friendly Support</h4>
						<p>We have 24hr technical support to insure that if any problem should arise you are able to contact us and we are able as swift as possible because after all it is your money.</p>
						<a href="single.html" data-toggle="modal" data-target="#myModal1" >More details<span class="glyphicon glyphicon glyphicon-arrow-right" aria-hidden="true"></span></a>
					</div>
					<div class="clearfix"> </div>
				</div>
				
			</div>
	</div>
<div class="clearfix"></div>
</div>
<!--//services-section-->

<!-- Footer -->

			<div class="copyright-wthree">
				<p>&copy; 2017 Payment Gateway<a href="http://w3layouts.com/#" </a></p>
			</div>
<!-- //Footer -->

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

	
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:true,
									nav:false,
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
							 
							 
							 <script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider1").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
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
<!--gallery-->

<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems:3,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 2
										}
									}
								});
								
							});
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
<!--gallery-->



 <!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<!--js for bootstrap working-->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->


<!-- script-for-menu -->
					<script>					
						$("span.menu").click(function(){
							$(".top-nav ul").slideToggle("slow" , function(){
							});
						});
					</script>
					<!-- script-for-menu -->

</body>
</html>

