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
<title>Add Products</title>

<link href="<c:url value='resources/css/bootstrap.min.css'/>"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
	var c = $
	{
		json
	};
	angular.module('myApp', []).controller('ProductController',
			function($scope) {
				$scope.pr = c;
			});
</script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}

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
					<li><a href="pegions">Pegions</a></li>
				</ul>
			<li><a href="aboutus">ABOUT US</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li class="active"><a href="form"> FORM</a></li>
			<li><a href="spform"> SUPPLIER FORM</a></li>
			<li><a href="catform"> CATEGORY FORM</a></li>

			<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>
	<div class="center">
		<center>
			<div style="color: black; font-size: 30px">PRODUCTS</div>
			<br>

			<form:form id="registerForm" commandName="prod" method="post"
				action="./addProduct" enctype="multipart/form-data">
				<table width="400px" height="200px">
						<tr>
							<td><label for="name">PRODUCT NAME</label></td>
							<td><form:input path="name" /></td>
						</tr>
						<tr>
							<td><label path="description">PRODUCT DESCRIPTION</label>
							</td>
							<td><form:input path="description" /></td>
						</tr>
						<tr>
							<td><label path="price">PRODUCT PRICE</label></td>
							<td><form:input path="price" /></td>
						</tr>
						<tr>
							<td><label for="name">UPLOAD IMAGE</label></td>
							<td><input name="file" id="fileToUpload" type="file" /></td>
						</tr>
						<tr>
							<td><label>CATEGORY NAME</label></td>
							<td><form:select path="catname" cssStyle="width:160px;">
									<option value="-1">Select a category</option>
									<c:forEach var="category" items="${catlist}">
										<option value="${category.catname}">${category.catname}</option>
									</c:forEach>
								</form:select></td>
						</tr>
						<tr>
							<td><label>SUPPLIER NAME</label></td>
							<td><form:select path="spname" cssStyle="width:160px;">
									<option value="-1">Select a supplier</option>
									<c:forEach var="supplier" items="${suplist}">
										<option value="${supplier.spname}">${supplier.spname}</option>
									</c:forEach>
								</form:select></td>
						</tr>
				<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Add Product</h4>
									</div>
									<div class="modal-body">
										<p>YOU HAVE NOT ENTERED ANY PRODUCTS IN THE FIELD</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						<tr>
							<td></td>
							<td>

								<button type="submit" data-toggle="modal" data-target="#myModal">Add</button>
								<a href="form"><button type="button">CANCEL</button></a>
							</td>

						</tr>

					</table>
</form:form>

					<a href="list"><button type="button">Click Here to see
							product List</button></a>
		</center>
<br>
		<img src="<c:url value="${img}" />" alt="image" height="100px"
			weight="100px" />
	</div>

</body>
</html>