<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Compte | E-Buy</title>
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

<body>
	
	<%@ include file="includes/header.jsp"%>
	 
	 <div id="contact-page" class="container">
    	<div class="bg">  	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    			<br><br><br><br><br><br>
	    				<h2 class="title text-center">Mes informations</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required="required" value="${User.lastName}">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required="required" value="${User.firstName}" >
				            </div>
				            <div class="form-group col-md-12">
				                <input type="email" name="email" class="form-control" required="required" value="${User.email}">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="password" name="email" class="form-control" required="required" placeholder="Mot de passe">
				            </div> 
				            <div class="form-group col-md-12">
				                <input type="password" name="email" class="form-control" required="required" placeholder="Confimer Mot de passe">
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
				            </div>
				        </form>
				       
	    			<br><br><br><br><br><br>
	    			</div>
	    		</div>
	      			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
	
	
<%@ include file="includes/footer.jsp"%>
  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="js/gmaps.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>