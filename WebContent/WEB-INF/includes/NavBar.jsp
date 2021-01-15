
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="./index" style="margin-right: 50px">E-buy <img alt="not found" src="inc/logo.png" style="width: 70px; height: 50px"> </a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="./mes_commandes">Mes Commandes 
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="./mes_informations">Mes Informations</a></li>
			<li class="nav-item"><a class="nav-link" href="./mes_messages">Mes messages</a></li>
		</ul>
		<span class="navbar-text">
			<form class="form-inline" method="post">
				<c:if test="${50>10 }" var="variable">

					<label class="btn btn-outline-success my-2 my-sm-0"
						style="border: 0px; color: white">Non du connecté
						(${!variable })</label>

				</c:if>


			</form>
		</span> <a href="./connexion">
			<button class="btn btn-outline-success my-2 my-sm-0"
				style="margin-left: 10px">Connexion</button>
		</a>

	</div>
	<div>
	
	</div>
</nav>