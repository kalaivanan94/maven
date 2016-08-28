<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html> 
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PetsWorld</title>

    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
    <script src="D:\pets\PetsWorld\src\main\webapp\resources\js\jquery-2.2.3.min.js"></script>
    <script src="D:\pets\PetsWorld\src\main\webapp\resources\js\bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
</style>
</head>
     
    <body style="background-color:powderblue;">
    
 
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">PETS WORLD</a>
</div>
   
<ul class="nav navbar-nav">
    <li class="active"><a href="<c:url value='views/home.jsp'/>"/><span class="glyphicon glyphicon-home"></span>HOME</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
  <ul class="dropdown-menu">
    <li><a href="#">Dogs and Puppies</a></li>
    <li><a href="#">Cats and Kittens</a></li>
    <li><a href="#">Pegions</a></li>
  </ul>       
    <li><a href="<c:url value='views/about.jsp'/>"/>ABOUT US</a></li> 
  
</ul>

<ul class="nav navbar-nav navbar-right">
    <li><a href="<c:url value='views/signup.jsp'/>"/><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    <li><a href="<c:url value='views/login.jsp'/>"/><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
</div>
</nav>
  
<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

<div class="carousel-inner" role="listbox">
   

   <div class="item active">
      <img src="<c:url value='resources/images/pets2.jpg'/>"/>
   </div>

   <div class="item">
      <img src="<c:url value='resources/images/pets3.jpg'/>"/>
   </div>

   <div class="item">
      <img src="<c:url value='resources/images/pets4.jpg'/>"/>
   </div>
   
   <div class="item">
      <img src="<c:url value='resources/images/pets5.jpg'/>"/>
   </div>
    
  

  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>>

</body>
</html>