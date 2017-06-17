<!DOCTYPE HTML>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Demo App</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div>
						<nav>
								<ul class="actions">
										<li><a  class="button special">Demo App</a></li>
									</ul>
								
						</nav>
							</div>
						<div class="content">
							<div class="inner">
								<h1>School of Devops</h1>
								<p><h4><% out.println("Your IP address is " + request.getRemoteAddr()); %></h4>
								<h4><% out.println("Your Host Name is " + request.getServerName()); %></h4>
								<h4>version 0.0.1 </h5>
								<h4>Today's date: <%= (new java.util.Date()).toLocaleString()%></h4>
							</div>
						</div>
						<nav>
							<ul>
								<li><a href="#about">Gaurav Shah</a></li>
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<div id="main">

						
						<!-- About -->
							<article id="about">
								<h2 class="major">About</h2>
								<span class="image main"><img src="images/pic03.jpg" alt="" /></span>
								<p>Lorem ipsum dolor sit amet, consectetur et adipiscing elit. Praesent eleifend dignissim arcu, at eleifend sapien imperdiet ac. Aliquam erat volutpat. Praesent urna nisi, fringila lorem et vehicula lacinia quam. Integer sollicitudin mauris nec lorem luctus ultrices. Aliquam libero et malesuada fames ac ante ipsum primis in faucibus. Cras viverra ligula sit amet ex mollis mattis lorem ipsum dolor sit amet.</p>
							</article>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copycopyrights; Designed by Meenachi</a>.</p>
					</footer>

			</div>

		<!-- BG -->
			<div id="bg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
