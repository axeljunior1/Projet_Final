


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



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


	
</head>
<body>
	
	

	<%@ include file="includes/NavBar.jsp"%>

	<div></div>
	<div class="container">
		<div class="jumbotron" style="padding-top: 0px;">
			<div class="card-header bg-transparent border-success" style="margin:-2em; margin-top: -0.7em; margin-bottom: -1em" >
			</div>
			<div style="margin-top: 2em">
			<p class="lead"> 
			${s} This is a simple hero unit, a simple
				jumbotron-style component for calling extra attention to featured
				content or information.</p>
				<a href="/Projet_4A_Sys_Dis/connexion"> lien de connexion</a>
				<a href="/Projet_4A_Sys_Dis/mes_messages"> lien de messages</a>
				<a href="/Projet_4A_Sys_Dis/mes_commandes"> lien de commandes</a>
				<a href="/Projet_4A_Sys_Dis/mes_informations"> lien de info</a>
				<a href="/Projet_4A_Sys_Dis/inscription"> lien de inscrip</a>
			</div>
			<c:if test="${!empty cf.res }">
				<c:out value="${cf.res }"></c:out>
			</c:if>
			<form action="fileJsp" method="post" style="margin-top: 1em;">
				<p>
					<label for="nom"> Nom:</label> <input type="text" name="nom"
						id="nom">
				</p>
				<p>
					<label for="prenom"> prenom:</label> <input type="text"
						name="prenom" id="prenom">
				</p>
				<p>
					<label for="age"> age:</label> <input type="text" name="age"
						id="age">
				</p>
				<input type="submit">
			</form>

			<c:forEach items="${etudiants}" var="etudiant">
				<p>${etudiant.nom }</p>
			</c:forEach>
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.</p>

			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.</p>

				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Dropdown</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
						<button class="dropdown-item" type="button">Action</button>
						<button class="dropdown-item" type="button">Anotheraction</button>
						<button class="dropdown-item" type="button">Somethingelse here</button>
					</div>
				</div>
				
			<hr class="my-4">
			<p>It uses utility classes for typography and spacing to space
				content out within the larger container.</p>
			<p class="lead">
				<a class="btn btn-primary btn-lg" href="#" role="button">Learn
					more</a>
			</p>

		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>