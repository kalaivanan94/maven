<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Details</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.center {
	text-align: center;
	margin-top: 70px;
}
</style>
</head>
<body style="background-color: powderblue;">
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"><img
				src="<c:url value='resources/image/img.jpg'/>"
				style="max-width: 100px; margin-top: -5px; height: 30px;" /></a>
		</div>

		<ul class="nav navbar-nav">
			<li><a href="mainpage"><span
					class="glyphicon glyphicon-home"></span> HOME</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="dogs">Dogs and Puppies</a></li>
					<li><a href="cats">Cats and Kittens</a></li>
					
				</ul>
			<li><a href="aboutus">ABOUT US</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			
			<li><a href="membership"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>

	<div class="center">
		
			<div style="color: black; font-size: 30px">VIEW PRODUCT</div>
			<br>
			<c:url var="userRegistration" value="saveUser.html" />
			<form:form id="registerForm" method="post" action="./updateProduct"
				commandName="prod">
				
<!-- 				<div class="row"> -->
					<div class="col-md-12">
						
						<div class="col-md-4">
							<img src="<c:url value="${prdList.img}" />" alt="image"
								height="400px" width="400px" />
								</div>
								
								<br>
							<br>
							<div class="col-md-4">
							PRODUCT ID:${prdList.pid} <br>
								 PRODUCT NAME:${prdList.name} <br>
								 PRODUCT DESCRIPTION:${prdList.description} <br>
								 PRODUCT QUANTITY:<input type="number" size="-4" class="input-text qty text"
									title="Qty" value="1" name="quantity" min="1" step="1"><br>
								  PRODUCT PRICE:${prdList.price} <br>
								 <a href="cart1"
									class="btn btn-info" role="button">CONTINUE SHOPPING</a>
								  <a href="addtocart?id=${user.pid}"
									class="btn btn-primary" role="button">ADD TO CART</a>
							</div>
						</div>

			</form:form>

		
		<br>

	</div>
</body>
</html>