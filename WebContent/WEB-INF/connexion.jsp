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

<link rel="stylesheet" type="text/css" href="inc/css_connexion.css" />

	
</head>
<body>

	<%@ include file="includes/NavBar.jsp"%>

	<div class="container" style="min-height: 100px;">
		<div class="jumbotron" style="padding-top: 0px;">
			<div class="card-header bg-transparent border-success">
					
			</div>
<div class="container" id="container">
	<div class="form-container sign-in-container">
		<form action="connexion" id="form" method="post">
		<c:if test="${ ! empty pass }"> ${pass} Vous êtes connecté</c:if>
			<h1>Sign in</h1>
			<input type="email" name="email" placeholder="Email" />
			<input type="password" name="password" placeholder="Password" />
			<a href="#">Forgot your password?</a>
			<a href="./inscription"><span>Sign up</span><br/></a>
			<input type="submit" value="send"/>
			<button type="submit">Sign In</button>
		</form>
	</div>
	
	
	
</div>


		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>