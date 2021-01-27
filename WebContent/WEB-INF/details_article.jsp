<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Details article | E-Buy</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
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
<!--/head-->


</head>
<body>
	<%@ include file="includes/header.jsp"%>


	<section id="slider">
		<!--slider-->
		<div class="container">
			<div class="col-sm-9 padding-right">
				<div class="product-details">
					<!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<img src="${article.getImage() }" alt="" />
							<h3>ZOOM</h3>
						</div>

					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<!--/product-information-->
							<img src="images/product-details/new.jpg" class="newarrival"
								alt="" />
							<h2>Nom: ${article.getNom() }</h2>
							<p><h5> Description:</h5> ${article.getDescription()}</p>
							<img src="" alt="" />
							<form action="panier" method="post">
								<input type="hidden" name="idarticle"
									value="${article.getIdarticle()}">
								<input type="submit"
									value=" <c:out value='Add to cart' escapeXml='false'></c:out> "
									style="background-color:;">
							</form>
							<!--/product-information-->
						</div>
					</div>
					<!--/product-details-->
				</div>
			</div>

			<div class="col-sm-9 padding-right">


					
					<div class="recommended_items"><!--recommended_items-->

					<h2 class="title text-center">Articles similaires</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
							<c:forEach items="${articles}" var="article"
						varStatus="status">
						<c:if test="${articles.size().equals(null) || articles.size()==0  }"> <c:out value="Aucun article disponible "></c:out>
							 </c:if>
								<div class="item <c:if test="${status.count < 3 }"> <c:out value="active"></c:out> </c:if>">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${articles[status.count-1].getImage()}" alt="" />
													<h2>${articles[status.count-1].getPrix()}&euro;</h2>
													<p>${articles[status.count-1].getNom()}</p>
													<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
												</div>
											</div>
										</div>
									</div>
								</div>
					</c:forEach>
					
							
								
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->
					
					
					
				</div>
				<!--features_items-->
			</div>
		</div>
	</section>

</body>
</html>