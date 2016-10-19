<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<style>
.center {
	text-align: center;
	margin-top: 50px;
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
					<li><a href="pegions">Pegions</a></li>
				</ul>
			<li><a href="aboutus">ABOUT US</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="form">ADD PRODUCT</a></li>
			<li><a href="spform"> SUPPLIER FORM</a></li>
			<li><a href="catform"> CATEGORY FORM</a></li>
			<li><a href="cart"> <span
					class="glyphicon glyphicon-shopping-cart"></span>CART
			</a></li>
			<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>
	<div class="center">
		<form name="checkoutForm" ng-submit="onSubmit()" data-abide>

			<div ng-if="processing" us-spinner></div>


			<div style="color: black; font-size: 30px">SHIPPING INFORMATON</div>
			<br>
			<center>
				<table width="400px" height="100px">
					<tr>
						<td><label for="name">SHIPPING NAME</label></td>
						<td><input ng-model="name" type="text" placeholder="Name">
						</td>
					</tr>
					<tr>
						<td><label for="name">SHIPPING ADDRESS</label></td>
						<td><input ng-model="address" type="text"
							placeholder="Address"></td>
					</tr>
				</table>
			</center>
			<br>

			<div style="color: black; font-size: 30px">PAYMENT INFORMATON</div>
			<br>
			<center>
				<table width="400px" height="100px">
					<tr>
						<td><label for="number">CARD NUMBER</label></td>
						<td><input ng-model="number" name="number"
							payments-format="card" payments-validate="card"
							placeholder="Card Number" type="text" /></td>
					</tr>
					
					<tr>
						<td><label for="number">EXPIRY DATE </label></td>
						<td><input ng-model="expiry" name="expiry"
							payments-format="expiry" payments-validate="expiry"
							placeholder="Expiry" type="text" /></td>
					</tr>
					<tr></tr>
					<tr>
						<td><label for="number">CVC</label></td>
						<td><input ng-model="cvc" name="cvc" payments-format="cvc"
							payments-validate="cvc" placeholder="CVC" type="text" /></td>
					</tr>

					<tr>
						<td><label> AMOUNT TO PAY:</label></td>
						<td><strong>{{totalAmount}}$ </strong></td>
					</tr>
				</table>
			</center>

			<div class="clearfix">
				<div class="right">
					<button class="cancel" ng-click="$dismiss();">Cancel</button>
					<button type="submit" ng-disabled="checkoutForm.$invalid">Place
						Order</button>
				</div>
			</div>
			</form>
	</div>

	
</body>

</html>