<!DOCTYPE html>
	<html>

	<head>
	<!-- Basic -->
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<!-- Site Metas -->
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="author" content="" />

	<title>Neogym</title>

	<!-- slider stylesheet -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

	<!-- bootstrap core css -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

	<!-- fonts style -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="css/style.css" rel="stylesheet" />
	<!-- responsive style -->
	<link href="css/responsive.css" rel="stylesheet" />
	</head>

	<body>
	<div class="hero_area">
		<!-- header section strats -->
		<header class="header_section">
		<div class="container-fluid">
			<nav class="navbar navbar-expand-lg custom_nav-container ">
			<a class="navbar-brand" href="index.html">
				<span>
				Neogym
				</span>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
				<ul class="navbar-nav  ">
					<li class="nav-item">
					<a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item ">
					<a class="nav-link" href="<?=base_url("/>why")?> "> Why us </a>
					</li>
					</li>
					<li class="nav-item">
					<a class="nav-link" href="<?=base_url("/trainers")?> "> trainers</a>
					</li>
					<li class="nav-item">
					<a class="nav-link"  href="<?=base_url("/contact")?> "> Contact Us</a>
					</li>
				</ul>
				<div class="user_option">
					<form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
					<button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
					</form>
				</div>
				</div>
			</div>
			</nav>
		</div>
		</header>
		<!-- end header section -->
    
        <?= $this->renderSection("slide")?>

	</div>
    <?=$this->renderSection("conteudo")?>


    <!-- info section -->
	<section class="info_section layout_padding2">
		<div class="container">
		<div class="info_items">
			<a href="">
			<div class="item ">
				<div class="img-box box-1">
				<img src="" alt="">
				</div>
				<div class="detail-box">
				<p>
					Location
				</p>
				</div>
			</div>
			</a>
			<a href="">
			<div class="item ">
				<div class="img-box box-2">
				<img src="" alt="">
				</div>
				<div class="detail-box">
				<p>
					+02 1234567890
				</p>
				</div>
			</div>
			</a>
			<a href="">
			<div class="item ">
				<div class="img-box box-3">
				<img src="" alt="">
				</div>
				<div class="detail-box">
				<p>
					demo@gmail.com
				</p>
				</div>
			</div>
			</a>
		</div>
		</div>
	</section>

	<!-- end info_section -->



	
	<!-- footer section -->
	<footer class="container-fluid footer_section">
		<p>
		&copy; 2020 All Rights Reserved. Design by
		<a href="https://html.design/">Free Html Templates</a>
		</p>
	</footer>
	<!-- footer section -->

	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

	</body>

	</html>