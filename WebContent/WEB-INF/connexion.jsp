<!DOCTYPE html>
<html>
<head>
<%
	String s = "S'inscrire";
String s1 = "./inscription";
String s2 = "Se Connecter";
request.setAttribute("s", s);
request.setAttribute("s1", s1);
request.setAttribute("s2", s2);
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
			<div class="card-header bg-transparent border-success"></div>
			
			<form action="inscription" class="form_connexion" id="form" method="post">

				<h2>Sign in</h2>
				<c:if test="${! empty erreurs  }">
					<div style="font-family: Montserrat; color: red;">
						
						<c:if test="${! empty erreurs['email']  }">
							<div class="col">
								<span class="erreur">${erreurs['email']}</span>
							</div>
						</c:if>

						<c:if test="${! empty erreurs['password']  }">
							<div class="col">
								<span class="erreur">${erreurs['password']}</span>
							</div>
						</c:if>

					</div>
				</c:if>
				

				<p type="Email *:">
					<input type="email" name="email" id="email"
						value="<c:out value="${param.email}"/>" />
				</p>

				<p type="Mot de passe *:">
					<input type="password" name="password" id="password" value="" />
				</p>
				<br>


				<div class="row">
					<div class="col" align="left">
						<a href="./connexion">
							<h3>Sign Up</h3>
						</a>
					</div>
					<div class="col">
						<button>Sign In</button>
					</div>
				</div>
			</form>


		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>