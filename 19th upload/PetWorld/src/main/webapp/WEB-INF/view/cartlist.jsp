<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PET WORLD</title>

<link href="<c:url value='resources/css/bootstrap.min.css'/>"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%-- <script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
	var c = $
	{
		json
	};
	angular.module('myApp', []).controller('PetWorld', function($scope) {
		$scope.pr = c;
	});
</script>
<script>
	var app = angular.module('myApp', []);
	app.controller('PetWorld', function($scope) {
		$scope.names = [ "1", "2", "3","4","5" ];
	});
</script> --%>
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
				style="max-width: 100px; margin-top: -7px; height: 32px;" /></a>
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
			
			<li class="active"><a href="addtocart"> <span
					class="glyphicon glyphicon-shopping-cart"></span>CART
			</a>
			<li><a href="membership"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="mainpage"><span
					class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>

		</ul>
	</div>
	</nav>
	<div class="center">
		<center>
			<%--			<div ng-app="myApp" ng-controller="PetWorld">       --%>
			<div style="color: black; font-size: 30px">SHOPPING CART</div>
			<c:if test="${!empty cartList}">
				<table border="1" bgcolor="white" width="500px">
			<tr style="background-color: teal; color: white; text-align: center;"
				height="40px">
						<td>product image</td>
						<td>product details</td>
						<td>product quantity</td>
						<td>product price</td>
						<td>remove product</td>
					</tr>
					<c:forEach items="${cartList}" var="user">
						<tr
					style="background-color: white; color: black; text-align: center;"
					height="30px">
							<td><img src="<c:url value="${prdList.img}" />" alt="image"
							height="200px" width="200px" /></td>

						<td>PRODUCT ID:${user.pid} <br> PRODUCT
							NAME:${user.name} <br> PRODUCT
							DESCRIPTION:${user.description} <br></td>
						<td><input type="number" size="-4"
							class="input-text qty text" title="Qty" value="1" name="quantity"
							min="1" step="1"></td>
						<td>${user.price}</td>

						<td><a href="deleteProduct?id=${user.pid}"
							class="btn btn-primary" role="button">REMOVE</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<br>
			<a href="cart1" class="btn btn-info" role="button">CONTINUE SHOPPING</a>
			 <a href="checkout" class="btn btn-primary" role="button">CHECK OUT</a>
		</center>
		</div>
</body>
</html>