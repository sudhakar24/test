<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
    .navbar-default {
    background-color:white !important;
    color:black !important;
    
}
.navbar-default .navbar-nav>li>a {
    color: #171717 !important;
    font-size:15px !important;
    padding-top:10px !important;
    padding-bottom:10px !important;
    text-decoration: underline !important;
}
</style>
</head>
<body>
<nav id="navbar-red" class="navbar navbar-default" role="navigation">
<div class="container-fluid">
<ul class="nav navbar-nav">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-nav">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</ul>
</div>
<div class="collapse navbar-collapse" id="bs-example-nav">
<ul class="nav navbar-nav navbar-left">
<li><a href="${pageContext.request.contextPath}/index" ><img src="resources/logo.JPG" style=width:100px;height:40px;></img></a></li>
<li><a href="${pageContext.request.contextPath}/index" ><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>



</ul>



<ul class="nav navbar-nav navbar-right">
<c:if test="${pageContext.request.userPrincipal.name==null}">
<li><a href="${pageContext.request.contextPath}/productDetails">Product Details</a></li>
<li><a href="${pageContext.request.contextPath}/goToLogin"><i class="fa fa-sign-in" aria-hidden="true"></i> Log In</a></li>
<li><a href="${pageContext.request.contextPath}/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
</c:if> 
</ul>

<c:if test="${pageContext.request.userPrincipal.name!=null}">
<ul class="nav navbar-nav navbar-left">
<li><a href="${pageContext.request.contextPath}/category"><i class="fa fa-list" aria-hidden="true"></i>Category</a></li>
<li><a href="${pageContext.request.contextPath}/supplier">Supplier List</a></li>
<li><a href="${pageContext.request.contextPath}/product">Product List</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a>Welcome:${pageContext.request.userPrincipal.name}</a></li>
<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
<li><a href="${pageContext.request.contextPath}/goToCart">My Cart <i class="fa fa-cart-plus" aria-hidden="true"></i> </a></li>
</ul>
</c:if>
</div>
</nav>
</body>
</html>