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
<title>Connexion | E-Buy</title>

<link rel="stylesheet" type="text/css" href="inc/inscription_css.css" />

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

	<div class="container">
			
			<form action="connexion" class="form_connexion"  method="post" style="margin-top: 70px; margin-bottom: 70px; color: white; ">

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
						<c:if test="${! empty erreurs['notAUser']  }">
							<div class="col">
								<span class="erreur">${erreurs['notAUser']}</span>
							</div>
						</c:if>

					</div>
				</c:if>
				

				<p type="Email *:">
					<input type="email" name="email" placeholder="Email" id="email"
						value="<c:out value="${param.email}"/>" />
				</p>

				<p type="Mot de passe *:">
					<input type="password" placeholder="Password" name="password" id="password" value="<c:out value="${User.password}"/>" />
				</p>
				<br>


				<div class="row">
					<div class="col" >
							<span>Do not have an Account?</span>
							<h3> <a href="./inscription" style="color: green">Sign Up</a></h3>
						
					</div>
					<div class="col">
						<button type="submit">Sign In</button>
					</div>
				</div>
			</form>


		</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>