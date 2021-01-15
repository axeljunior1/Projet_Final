<!DOCTYPE html>
<html>
<head>
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

	<div></div>
	<div class="container" style="min-height: 100px;">
		<div class="jumbotron" style="min-height: 100px;">
			<div class="card-header bg-transparent border-success">
					
			</div>
<div class="container" id="container">
	<div class="form-container sign-in-container">
		<form action="#" id="form">
			<h1>Sign in</h1>
			<input type="email" placeholder="Email" />
			<input type="password" placeholder="Password" />
			<a href="#">Forgot your password?</a>
			<a href="./inscription"><span>Sign up</span><br/></a>
			<button>Sign In</button>
		</form>
	</div>
	
	
	
</div>


		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>