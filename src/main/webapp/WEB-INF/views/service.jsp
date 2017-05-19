<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PriceLists - Our Services</title>
    
	
	</head>	
		<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	 --><!-- Bootstrap -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/jquery.bxslider.css">
	<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/isotope.css" media="screen" />		
	<link rel="stylesheet" href="${contextPath}/resources/css/animate.css">
	<link rel="stylesheet" href="${contextPath}/resources/js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
	<link href="${contextPath}/resources/css/prettyPhoto.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/style.css" rel="stylesheet" />	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
	<header>		
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
			<div class="navigation">
				<div class="container">					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="navbar-brand" >
							<a href="index.html"><h1><span>Wellness</span> Club Inc.</h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div >
							<ul class="nav nav-tabs" role="tablist" id='topnav'>
								<li class="active"><a href="#">Services</a></li>
								<li ><a href="index">Home</a></li>
								<li><a href="about">About Us</a></li>																
								<li><a href="contact">Contact Us</a></li>	
								<li><a href="signups">Sign up</a></li>
								<li><a href="login">login</a></li>	</ul>
						</div>
					</div>						
				</div>
			</div>	
		</nav>		
	</header>
   <div class="container">
	<section id="portfolio" >        
			<div class="col-lg-12">
				<div class="text-center">
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
						<h2>Global Membership for our Services</h2>					
					</div>
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
						<p>Sit down and Relax We get you. Check out our Work, We link you business to customers through instant price statistics,
						We provide you buisiness with nation aide statistics, use our statistics to predict prices and plan in advance with your stock</p>
					</div>
				</div>
			

				<ul class="portfolio-filter text-center">
					<li><a class="btn btn-default active" href="#" data-filter="*">All Works</a></li>
					<li><a class="btn btn-default" href="#" data-filter=".bootstrap">Oil & Gas</a></li>
					
				</ul><!--/#portfolio-filter-->

				<div class="row">
					<div class="portfolio-items">
						<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item1.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Denver Colorado</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>
						</div><!--/.portfolio-item-->

						<div class="portfolio-item joomla bootstrap col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item2.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Nairobi Kenya</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>          
						</div><!--/.portfolio-item-->

						<div class="portfolio-item bootstrap wordpress col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item3.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Cape Town South Africa</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item3.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>        
						</div><!--/.portfolio-item-->

						<div class="portfolio-item joomla wordpress apps col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item4.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Melbourne Australia</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>           
						</div><!--/.portfolio-item-->
			  
						<div class="portfolio-item joomla html bootstrap col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item5.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Seattle WA</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>      
						</div><!--/.portfolio-item-->

						<div class="portfolio-item wordpress html apps col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item6.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Toronto Canada</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item6.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>         
						</div><!--/.portfolio-item-->

						<div class="portfolio-item wordpress html col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item7.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Memphis TN USA</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item7.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>          
						</div><!--/.portfolio-item-->

						<div class="portfolio-item wordpress html bootstrap col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive"  src="${contextPath}/resources/images/portfolio/recent/item8.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Price Lists Around the World</a></h3>
										<p>Lagos Nigeria</p>
										<a class="preview"  href="${contextPath}/resources/images/portfolio/full/item8.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>          
						</div><!--/.portfolio-item-->
					</div>
				</div>
			</div>        
    </section><!--/#portfolio-item-->
    </div>
		
	<footer>
		<div class="footer">
			<div class="container">
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.2s">
					<h2>Price Lists</h2>
					<p>Explore, Compare prices & Make informed decissions
					.</p>
					
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
					<h3>CONTACT INFO</h3>
					<ul>
						<li><i class="fa fa-home fa-2x"></i> Office # 828 WoodRuff St louise MO 63013</li><hr>
						<li><i class="fa fa-phone fa-2x"></i> +314 803 6543</li><hr>
						<li><i class="fa fa-envelope fa-2x"></i> info@emni.net</li>
					</ul>
				</div>
				
			</div>
		</div>
		
		<div class="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						&copy; 2016 <a target="_blank" href="#" title="price Lists Inc 2006">PriceLists.net</a>. All Rights Reserved.
					</div>
                   
					<div class="col-md-6">
						<ul class="pull-right">
							    <li role="presentation"><a href="index.html" class="active">Home</a></li>
								<li role="presentation"><a href="about.html">About</a></li>								
								<li role="presentation"><a href="services.html">Services</a></li>
								<li role="presentation"><a href="contact.html">Contact</a></li>	
								<li role="presentation"><a href="login.html">Login | Sign-up</a></li>	
						</ul>  
					</div>
				</div>
				<div class="pull-right">
					<a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
				</div>
			</div>
		</div>		
	</footer>
   
   
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->	
    <script src="${contextPath}/resources/js/jquery-2.1.1.min.js"></script>	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${contextPath}/resources/js/wow.min.js"></script>
	<script src="${contextPath}/resources/js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="${contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script src="${contextPath}/resources/js/jquery.bxslider.min.js"></script>
	<script src="${contextPath}/resources/js/jquery.prettyPhoto.js"></script>
	<script src="${contextPath}/resources/js/jquery.isotope.min.js"></script> 
	<script src="${contextPath}/resources/js/functions.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
	
  </body>
</html>