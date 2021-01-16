
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="./index" style="margin-right: 50px">E-buy
		<img alt="not found" src="inc/logo.png"
		style="width: 70px; height: 50px">
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="./mes_commandes">Mes Commandes <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="./mes_informations">Mes Informations</a></li>
			<li class="nav-item"><a class="nav-link" href="./mes_messages">Mes
					messages</a></li>
		</ul>
		<form class="form-inline" method="post">


			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search"
				style="width: auto; mix-width: 40em; border-radius: 50px;">

			<button class="btn btn-outline-success my-2 my-sm-0" type="submit"
				style="border-radius: 50px;">Search</button>
			<c:if test="${! empty b_inscription.lastName}" var="variable">

				<label class="btn btn-outline-success my-2 my-sm-0"
					style="border: 0px; color: white">Bonjour
					${b_inscription.lastName } </label>

			</c:if>


		</form>
		<c:if test="${empty s1 && empty b_inscription.lastName}">
			<a href="./connexion">
				<button class="btn btn-outline-success my-2 my-sm-0"
					style="margin-left: 10px">${s}<c:if test="${ empty s && empty b_inscription.lastName}">Connexion</c:if>
				</button>
			</a>
		</c:if>
		<c:if test="${! empty s1 && empty b_inscription.lastName}">
			<a href="${s1}">
				<button class="btn btn-outline-success my-2 my-sm-0"
					style="margin-left: 10px">${s}<c:if test="${ empty s && empty b_inscription.lastName }">Connexion</c:if>
				</button>
			</a>
		</c:if>
		<c:if test="${! empty b_inscription.lastName }">
			<form action="deconnexion" method="post">
				<button class="btn btn-outline-success my-2 my-sm-0"
					style="margin-left: 10px" type="submit">Déconnexion</button>
			</form>
		</c:if>


	</div>
	<div></div>
</nav>