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

<link rel="stylesheet" type="text/css" href="inc/inscription_css.css" />


   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | E-Shopper</title>
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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->


</head>
<body>

	<%@ include file="includes/header.jsp"%>

	<div class="container">
			<form action="inscription" class="form" id="form" method="post" style="margin-top: 70px; margin-bottom: 70px; color: white;">

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
					<input type="text" id="firstName" placeholder="Nom" name="firstName" value="<c:out value="${param.firstName}"/>" />
				</p>

				<p type="Prénom *:">
					<input type="text" id="lastName" name="lastName" placeholder="Prénom" value="<c:out value="${param.lastName}"/>" />
				</p>


				<p type="Email *:">
					<input type="email" name="email" placeholder="Email" id="email" value="<c:out value="${param.email}"/>" />
				</p>

				<p type="Mot de passe *:">
					<input type="password" name="password" placeholder="password" id="password" value="" />
				</p>

				<p type="Confirmation *:">
					<input type="password" name="confirmPassword" placeholder="Confirmer le mot de passe" id="confirmPassword"
						value="" />
				</p> <br>

				
					<div class="row">
						<div class="col" align="left">
							<h2 ><a href="./connexion"> Sign in </a> </h2>
						</div>
						<div class="col">
							<button >Sign Up</button>
						</div>
					</div>
			</form>


		</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>