<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				style="max-width: 100px; margin-top: -6px; height: 32px;" /></a>
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
			
			<li class="active"><a href="membership"><span
					class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
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

				<div class="col-md-12 well">
					<fieldset>
						<sf:form modelAttribute="beanModule">
							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<%-- <a href="${flowExecutionUrl}&_eventId_home">NEW USER</a> --%>
										<sf:label path="name">UserName:</sf:label>
										<sf:input path="name" placeholder="Enter User Name Here.."
											class="form-control" />
									</div>
								</div>

								<div class="col-sm-6 form-group">
									<div class="form-group">
										<sf:label path="password">password: </sf:label>
										<sf:input path="password" type="password"
											placeholder="Enter Password Here.." class="form-control" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<sf:label path="emailid">Email Id: </sf:label>
										<sf:input path="emailid" placeholder="Enter Email Id Here.."
											class="form-control" />
									</div>
								</div>

								<div class="col-sm-6 form-group">
									<div class="form-group">
										<sf:label path="contact">Contact: </sf:label>
										<sf:input path="contact" placeholder="Enter Mobile No. Here.."
											class="form-control" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('contact')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-12 form-group">
									<div class="form-group">
										<sf:label path="address">Address: </sf:label>
										<sf:input path="address" placeholder="Enter Address Here.."
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 form-group">
									<div class="form-group">

										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">

										<sf:label path="city">City:</sf:label>
										<sf:input path="city" placeholder="Enter City Here.."
											class="form-control" />
									</div>
								</div>

								<div class="col-sm-6 form-group">
									<div class="form-group">
										<sf:label path="postalcode">Postal Code: </sf:label>
										<sf:input path="postalcode"
											placeholder="Enter Postal Code Here.." class="form-control" />
									</div>
								</div>
						

							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('city')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('postalcode')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<sf:label path="State">State: </sf:label>
										<sf:input path="State" placeholder="Enter State Here.."
											class="form-control" />
									</div>
								</div>

								<div class="col-sm-6 form-group">
									<div class="form-group">
										<sf:label path="country">Country: </sf:label>
										<sf:input path="country" placeholder="Enter Country Here.."
											class="form-control" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('state')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="col-sm-6 form-group">
									<div class="form-group">
										<c:forEach
											items="${flowRequestContext.messageContext.getMessagesBySource('country')}"
											var="err">
											<div>
												<span>${err.text}</span>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
							

							<!-- for triggering webflow events using form submission,
the eventId to be triggered is given in "name" attribute as:
-->
							<input name="_eventId_submit" type="submit" value="Register" />
				</div>
				</sf:form>
				</fieldset>
			</div>
		</div>
		</div>

	</center>
</body>
</html>