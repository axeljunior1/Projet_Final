<!DOCTYPE html>
<html>
<head>
<%
String active = "mes_informations";
request.setAttribute("active", active);
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


	
</head>
<body>

	<%@ include file="includes/NavBar.jsp"%>

	<div></div>
	<div class="container" style="min-height: 100px;">
		<div class="jumbotron" style="min-height: 100px;">
			<div class="card-header bg-transparent border-success">
					
			</div>



		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>