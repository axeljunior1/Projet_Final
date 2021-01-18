<!DOCTYPE html>
<html>
<head>
<%
	String s = "Se Connecter";
String s1 = "./connexion";
String s2 = "inscription";
	request.setAttribute("s", s);
	request.setAttribute("s1", s1);
	request.setAttribute("s2", s2);
%>
<meta charset="ISO-8859-1">
<title>${s2 }</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="inc/inscription_css.css" />
</head>
<body>

	<%@ include file="includes/NavBar.jsp"%>

	<div class="container">
		<div class="jumbotron" style="padding-top: 0px;">
			<div class="card-header bg-transparent border-success"  >
					
			</div>
			<form action="inscription" class="form" id="form" method="post">

				<h2>Sign up</h2>
				<c:if test="${! empty erreurs  }">
					<div style="font-family: Montserrat; color: red;">
						<c:if test="${! empty erreurs['firstName']  }">
							<div class="col">
								<span class="erreur">${erreurs['firstName']}</span>
							</div>
						</c:if>
						<c:if test="${! empty erreurs['lastName']  }">
							<div class="col">
								<span class="erreur">${erreurs['lastName']}</span>
							</div>
						</c:if>

						<c:if test="${! empty erreurs['email']  }">
							<div class="col">
								<span class="erreur">${erreurs['email']}</span>
							</div>
						</c:if>

						<c:if test="${! empty erreurs['confirmPassword']  }">
							<div class="col">
								<span class="erreur">${erreurs['confirmPassword']}</span>
							</div>
						</c:if>

					</div>
				</c:if>
				<p type="Nom *:">
					<input type="text" id="firstName" name="firstName" value="<c:out value="${param.firstName}"/>" />
				</p>

				<p type="Prénom *:">
					<input type="text" id="lastName" name="lastName" value="<c:out value="${param.lastName}"/>" />
				</p>


				<p type="Email *:">
					<input type="email" name="email" id="email" value="<c:out value="${param.email}"/>" />
				</p>

				<p type="Mot de passe *:">
					<input type="password" name="password" id="password" value="" />
				</p>

				<p type="Confirmer le mot de passe *:">
					<input type="password" name="confirmPassword" id="confirmPassword"
						value="" />
				</p> <br>

				
					<div class="row">
						<div class="col" align="left">
							<a href="./connexion"> <h3>Sign in</h3></a>
						</div>
						<div class="col">
							<button>Sign Up</button>
						</div>
					</div>
			</form>


		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>