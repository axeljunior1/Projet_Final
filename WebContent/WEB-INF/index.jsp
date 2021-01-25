


<!DOCTYPE html>
<html>
<head>
<%
	String s = "Connexion";
String s1 = "./connexion";
String s2 = "Se Connecter";
String active = "active";
request.setAttribute("s", s);
request.setAttribute("s1", s1);
request.setAttribute("s2", s2);
%>
<title>${s}</title>




<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

</head>
<body>

	<%@ include file="includes/header.jsp"%>

	<section id="slider">
		<!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0"
								class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
							<li data-target="#slider-carousel" data-slide-to="3"></li>
						</ol>

						<div class="carousel-inner">
							<div class="item ">
								<div class="col-sm-6" style="color: blue;">
									<h1>
										<span>E</span><span style="color: orange;">-BUY </span>
									</h1>
									<h2>The best e-shopppp!!!</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
									<button type="button" class="btn btn-default get">Get
										it now</button>
								</div>
								<div class="col-sm-6">
									<img
										src="https://static.iceshop.fr/2886-medium_default/frigo-vitrine-a-boissons-noir-380-litres.jpg"
										class="girl img-responsive" alt="" />

								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1>
										<span>E</span>-BUY
									</h1>
									<h2>The best e-shopppp!!!</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
									<button type="button" class="btn btn-default get">Get
										it now</button>
								</div>
								<div class="col-sm-6">
									<img
										src="https://www.electrodepot.fr/media/catalog/product/cache/1a40d1f945549a9ec18309b0a600e55c/P959112.jpg"
										class="girl img-responsive" alt="" />

								</div>
							</div>

							<div class="item">
								<div class="col-sm-6">
									<h1>
										<span>E</span>-BUY
									</h1>
									<h2>The best e-shopppp!!!</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
									<button type="button" class="btn btn-default get">Get
										it now</button>
								</div>
								<div class="col-sm-6">
									<img
										src="https://mixelec.fr/wp-content/uploads/2020/04/gaming.jpg"
										class="girl img-responsive" alt="" />
								</div>
							</div>

							<div class="item active">
								<div class="col-sm-6">
									<h1>
										<span>E</span>-BUY
									</h1>
									<h2>The best e-shopppp!!!</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
									<button type="button" class="btn btn-default get">Get
										it now</button>
								</div>
								<div class="col-sm-6">
									<img
										src="https://d1fmx1rbmqrxrr.cloudfront.net/cnet/optim/i/edit/2020/06/xbox-ps5-vs-770__w1200.jpg"
										class="girl img-responsive" alt="" />
								</div>
							</div>


						</div>

						<a href="#slider-carousel" class="left control-carousel hidden-xs"
							data-slide="prev"> <i class="fa fa-angle-left"></i>
						</a> <a href="#slider-carousel"
							class="right control-carousel hidden-xs" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--/slider-->

	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian">
							<!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian"
											href="#sportswear"> <span class="badge pull-right"><i
												class="fa fa-plus"></i></span> Sportswear
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Nike </a></li>
											<li><a href="#">Under Armour </a></li>
											<li><a href="#">Adidas </a></li>
											<li><a href="#">Puma</a></li>
											<li><a href="#">ASICS </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian"
											href="#mens"> <span class="badge pull-right"><i
												class="fa fa-plus"></i></span> Mens
										</a>
									</h4>
								</div>
								<div id="mens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Fendi</a></li>
											<li><a href="#">Guess</a></li>
											<li><a href="#">Valentino</a></li>
											<li><a href="#">Dior</a></li>
											<li><a href="#">Versace</a></li>
											<li><a href="#">Armani</a></li>
											<li><a href="#">Prada</a></li>
											<li><a href="#">Dolce and Gabbana</a></li>
											<li><a href="#">Chanel</a></li>
											<li><a href="#">Gucci</a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian"
											href="#womens"> <span class="badge pull-right"><i
												class="fa fa-plus"></i></span> Womens
										</a>
									</h4>
								</div>
								<div id="womens" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="#">Fendi</a></li>
											<li><a href="#">Guess</a></li>
											<li><a href="#">Valentino</a></li>
											<li><a href="#">Dior</a></li>
											<li><a href="#">Versace</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#">Kids</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#">Fashion</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#">Households</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#">Interiors</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#">Clothing</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#">Bags</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="#">Shoes</a>
									</h4>
								</div>
							</div>
						</div>
						<!--/category-products-->

						<div class="brands_products">
							<!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#"> <span class="pull-right">(50)</span>Acne
									</a></li>
									<li><a href="#"> <span class="pull-right">(56)</span>Grüne
											Erde
									</a></li>
									<li><a href="#"> <span class="pull-right">(27)</span>Albiro
									</a></li>
									<li><a href="#"> <span class="pull-right">(32)</span>Ronhill
									</a></li>
									<li><a href="#"> <span class="pull-right">(5)</span>Oddmolly
									</a></li>
									<li><a href="#"> <span class="pull-right">(9)</span>Boudestijn
									</a></li>
									<li><a href="#"> <span class="pull-right">(4)</span>Rösch
											creative culture
									</a></li>
								</ul>
							</div>
						</div>
						<!--/brands_products-->

						<div class="price-range">
							<!--price-range-->
							<h2>Price Range</h2>
							<div class="well text-center">
								<section id="form" style="margin: 0px;">
									<!--form-->
									<form method="post">
										<div class="form-group">
											<input type="text" class="form-control"
												aria-describedby="emailHelp" placeholder="prix min"
												name="prix_min">
										</div>
										<div class="form-group">
											<input type="text" class="form-control"
												aria-describedby="emailHelp" placeholder="prix max"
												name="prix_max">
										</div>
										<button type="submit" class="btn btn-primary">Submit</button>
									</form>
							</div>
						</div>
						<!--/price-range-->

						<div class="shipping text-center">
							<!--shipping-->
							<img
								src="https://www.cdiscount.com/pdt2/f/n/a/1/300x300/mvh62fna/rw/apple-13-3-macbook-air-2019-intel-core-i5.jpg"
								alt="" />
						</div>
						<!--/shipping-->

					</div>
				</div>

				<c:if test="${liste_articles.size()!=0 }">
					<div class="col-sm-9 padding-right">
						<div class="features_items">
							<!--features_items-->


							<h2 class="title text-center">Resultat de la recherche</h2>
							<c:forEach items="${liste_articles}" var="article"
								varStatus="status">

								<div class="container">
									<div class="row">
										<form action="details_article" method="post">
											<input type="hidden" name="id_article"
												value='<c:out value="${liste_articles[status.count-1].getIdarticle()}" ></c:out>' />
											<div class="col-sm-3">
												<button type="submit"
													style="background: none; border: none;">
													<img src="${liste_articles[status.count-1].getImage()}"
														alt="" style="width: 150px; height: 150px;" />
												</button>
											</div>
											<div class="col-sm-4">
												<b style="color: blue;">${liste_articles[status.count-1].getNom()}
												</b> <br>
												${liste_articles[status.count-1].getDescription()}
											</div>

										</form>
										<div class="col-sm-3" style="align-content: center;">
											<b> &emsp; &emsp;
												${liste_articles[status.count-1].getPrix()}&euro;</b> <br>


											<form action="panier" method="post">
												<input type="hidden" name="idarticle"
													value="${liste_articles[status.count-1].getIdarticle()}">
												<input type="submit"
													value=" <c:out value='Add to cart' escapeXml='false'></c:out> "
													style="background-color:;">
											</form>
										</div>
									</div>
								</div>
								<hr>
							</c:forEach>

						</div>
						<!--features_items-->
					</div>

				</c:if>

				<div class="col-sm-9 padding-right">
					<div class="features_items">
						<!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product1.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product2.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product3.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product4.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<img src="images/home/new.png" class="new" alt="" />
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product5.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<img src="images/home/sale.png" class="new" alt="" />
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product6.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!--features_items-->



				</div>
			</div>
	</section>



	<%@ include file="includes/footer.jsp"%>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
</body>
</html>