<header id="header">
	<!--header-->
	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row" >
				<div class="col-sm-4">
					<div class="logo pull-left">
						
							<h4> <a href="index">E-buy</a> </h4>
						
					</div>


				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<li>
								<form class="form-inline" method="post" action="index">
									<input class="form-control mr-sm-2" type="search"
										placeholder="Search" aria-label="Search" name="search_bar"
										style="width: auto; background: #F0F0E9; border-radius: 50px;">

									<button class="btn btn-outline-success my-2 my-sm-0"
										type="submit" style="border-radius: 50px;">Search</button>
								</form>
							</li>
							<li><a href="./contact"><i class="fa fa-user"></i> 
							
							<c:if test="${ empty User.lastName}">
								Mon compte
							</c:if>
							<c:if test="${! empty User.lastName}">
								Bonjour ${ user_name }
							</c:if>
							
							</a></li>
							<li><a href="#"><i class="fa fa-star"></i>Contact</a></li>
							<!-- 	<li><a href="checkout.html"><i class="fa fa-crosshairs"></i>
									Checkout</a></li>   -->

							<li><a href="./panier"><i class="fa fa-shopping-cart"></i>
									<span style="color: red;">${map.size() }</span> Panier</a></li>


							<c:if test="${ empty User.lastName}">
								<li><a href="./connexion"><i class="fa fa-lock"></i>Connexion</a></li>
							</c:if>
							<c:if test="${! empty User.lastName}">
								<li><a href="./deconnexion"><i class="fa fa-lock"></i>Déconnexion</a></li>
							</c:if>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->
</header>
<!--/header-->