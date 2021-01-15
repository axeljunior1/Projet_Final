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
			<h1>Sign up</h1>
			<input type="text" placeholder=" first Name" />
			
			<input type="text" placeholder=" Last Name" />
			<input type="email" placeholder="Email" />
			<input type="password" placeholder="Password" />
			<input type="password" placeholder="Confirm Password" />
			<a href="./connexion"><span>Sign in</span><br/></a>
			<button>Sign Up</button>
		</form>
	</div>
	
	
	
</div>


		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>