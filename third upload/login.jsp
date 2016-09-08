<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PetsWorld</title>

    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet">
    <script src="D:\pets\PetsWorld\src\main\webapp\resources\js\jquery-2.2.3.min.js"></script>
    <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>

<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
</style>
</head>

    <body style="background-color:powderblue;">
    

    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#">PETS WORLD</a>
    </div>

<ul class="nav navbar-nav">
    <li><a href="<c:url value='views/home.jsp'/>"/><span class="glyphicon glyphicon-home"></span>HOME</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY <span class="caret"></span></a>
    <ul class="dropdown-menu">
          <li><a href="#">Dogs and Puppies</a></li>
          <li><a href="#">Cats and Kittens</a></li>
          <li><a href="#">Pegions</a></li>
</ul>       
<li><a href="about.jsp">ABOUT US</a></li> 
      
      </ul>


<div class="container">
<ul class="nav navbar-nav navbar-right">
    
    <input type="text" placeholder="Username" name="uname" required>
    <input type="password" placeholder="Password" name="psw" required>

    <button type="submit">Login</button>

    <li><a href="<c:url value='views/signup.jsp'/>"/><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
     
<br>  
    <span class="psw"><a href="#">Forget password?</span></a>
    
</ul>
</div>
</div>>
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
      <img src="<c:url value='resources/images/doggy.jpg'/>"/>
   </div>

   <div class="item">
      <img src="<c:url value='resources/images/cat.jpg'/>"/>
   </div>

   <div class="item">
      <img src="<c:url value='resources/images/bird3.jpg'/>"/>
   </div>

   <div class="item">
      <img src="<c:url value='resources/images/bird1.jpg'/>"/>
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