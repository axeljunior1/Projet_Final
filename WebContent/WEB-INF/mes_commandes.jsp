<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%
String active = "mes_commandes";

request.setAttribute("active", active);
%>


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
			<div class="card-header bg-transparent border-success">
				<h1>Vos Commandes </h1>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">Numero de Commande</th>
						<th scope="col">Date De commande </th>
						<th scope="col">Status</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>