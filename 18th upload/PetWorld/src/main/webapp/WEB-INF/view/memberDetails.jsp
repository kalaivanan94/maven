<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	height: 400px;
	margin: auto;
	
}

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
				style="max-width: 100px; margin-top: -6px; height: 32px;" /></a>
		</div>

		<ul class="nav navbar-nav">
			<li class="active"><a href="mainpage"><span
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
			<li><a href="form"> ADD PRODUCT</a></li>
			<li><a href="spform"> SUPPLIER FORM</a></li>
			<li><a href="catform"> CATEGORY FORM</a></li>
			<li><a href="cart"> <span class="glyphicon glyphicon-shopping-cart"></span>CART </a></li>
			<li><a href="membership"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>
	
<body>
	<center>
	<div class="center">
		<div class="container">
			<h1 class="well">Registration Form</h1>
			</div>
			</div>
			<div class="col-lg-9 well">
		<div class="container-fluid">
			<div class="row">
				<fieldset>
					
					<div class="form-group">
						<%-- <a href="${flowExecutionUrl}&_eventId_home">NEW USER</a> --%>
						<sf:form modelAttribute="BeanModule">
							
							<sf:label path="name">UserName:</sf:label>
							<div class="input-group">
								<sf:input path="name" class="form-control" />
							</div>
							<!-- to display validation messages -->
							<div class="container-fluid">
								<div class="row">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
										<br>
										<sf:label path="emailid">Email Id: </sf:label>
										<div class="input-group">
											<sf:input path="emailid" class="form-control" />
										</div>
									</div>
								</div>
							</div>
					</div>
					
					
					<div class="container-fluid">
						<div class="row">
							<div class="form-group">
								<c:forEach
									items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}"
									var="err">
									<div>
										<span>${err.text}</span>
									</div>
								</c:forEach>
								
								<sf:label path="password">password: </sf:label>
								<div class="input-group">
									<sf:input path="password" type="password" class="form-control" />
								</div>
							</div>
						</div>
						<div class="container-fluid">
							<div class="row">
								<div class="form-group">
									<c:forEach
										items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
										var="err">
										<div>
											<span>${err.text}</span>
										</div>
									</c:forEach>
									
									<sf:label path="address">address: </sf:label>
									<div class="input-group">
										<sf:input path="address" class="form-control" />
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="form-group">
						<c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
							var="err">
							<div>
								<span>${err.text}</span>
							</div>
						</c:forEach>
						
						<sf:label path="contact">contact: </sf:label>
						<div class="input-group">
							<sf:input path="contact" class="form-control" />
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- <div class="container-fluid">
<div class="row">
<div class="col-lg-6">
<div class="form-group"> -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
			var="err">
			<div>
				<span>${err.text}</span>
			</div>
		</c:forEach>
		
		<!-- for triggering webflow events using form submission,
the eventId to be triggered is given in "name" attribute as:
-->
		<input name="_eventId_submit" type="submit" value="Register" /><br />
		</sf:form>
		</fieldset>
		</div>
	</center>
</body>
</html>