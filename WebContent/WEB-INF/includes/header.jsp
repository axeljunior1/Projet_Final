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
							<li><form class="form-inline" method="post">


									<input class="form-control mr-sm-2" type="search"
										placeholder="Search" aria-label="Search"
										style="width: auto; background: #F0F0E9; border-radius: 50px;">

									<button class="btn btn-outline-success my-2 my-sm-0"
										type="submit" style="border-radius: 50px;">Search</button>
								</form></li>
							<li><a href="#"><i class="fa fa-user"></i> Account</a></li>
							<li><a href="#"><i class="fa fa-star"></i>Contact</a></li>
							<!-- 	<li><a href="checkout.html"><i class="fa fa-crosshairs"></i>
									Checkout</a></li>   -->

							<li><a href="cart.html"><i class="fa fa-shopping-cart"></i>
									Cart</a></li>


							<c:if test="${ empty User.lastName}">
								<li><a href="./connexion"><i class="fa fa-lock"></i>Login</a></li>
							</c:if>
							<c:if test="${! empty User.lastName}">
								<li><a href="./deconnexion"><i class="fa fa-lock"></i>Logout</a></li>
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