<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				style="max-width: 100px; margin-top: 6px; height: 32px;" /></a>
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
			<li><form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
           <h3>  Welcome : ${pageContext.request.userPrincipal.name} |
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h3>  
                 </c:if> 
</li>
<li><a href="logiin"><span class="glyphicon glyphicon-log-in"></span>
					ADMIN LOGIN</a></li>
			<li><a href="membership"><span class="glyphicon glyphicon-user"></span>
					SIGN UP</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					LOGIN</a></li>

		</ul>
	</div>
	</nav>
<body>
	<div class="center">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<div class="carousel-inner" role="listbox">


				<div class="item active">
					<img src="<c:url value='resources/image/banner-011.jpg'/>"
						 />
				</div>

				<div class="item">
					<img src="<c:url value='resources/image/PS-UK-FlashSale-October-HeroDes.jpg'/>"
						 />
				</div>

				<div class="item">
					<img src="<c:url value='resources/image/pets4.jpg'/>"  />
				</div>

				<div class="item">
				
					<img src="<c:url value='resources/image/pet_cats_1600x900.jpg'/>"class="center-block"width="1200" height="548"/>
				
				</div>



				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	
	<br>
<br>
		<center>
			<div style="color: black; font-size: 30px">PRODUCTS FOR SHOPPING</div>
			</center>
			<c:forEach items="${productList}" var="user">
<!-- 			<div class="row"> -->
			<div class="col-md-4">
			
				<div class="thumbnail">
				
						<img src="<c:url value="${user.img}" />" alt="image"
							height="100px" width="100px" />
						<br>
						<div class="caption">
						<center>
						Product Id:${user.pid}<br>
						Product Name:${user.name}<br>
						Product Description:${user.description}<br>
						Product Category:${user.catname}<br>
						Product Price: ${user.price}<br>
						<br>
						<a href="viewproduct?id=${user.pid}"><button type="button"
									class="btn btn-info">VIEW PRODUCT</button></a>
						<a href="cartlist"><button
									class="btn btn-primary" role="button" type="submit">ADD TO CART</button></a>
						</center>
					<br>
				</div>
				<br>
			</div>
			</div>
		
		</c:forEach>
	
	<%@include file="footer.jsp"%>
</body>


</html>