<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title><decorator:title default="Game4U" /></title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/fonts/ionicons.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/untitled.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/Navigation-with-Search.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/styles.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/css/pikaday.min.css">

<decorator:head />
</head>

<body>
<div style="padding: 0px 250px; min-width: 1300px; margin: auto;">
	<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
		<div class="container">
			<a class="navbar-brand logo" href="#">Game4U</a>
			<button style="outline: none;" data-toggle="collapse" class="navbar-toggler" data-target="#navbarNav">
				<span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="nav navbar-nav">
					<li class="nav-item"><a class="nav-link active" href="index.jsp">Store</a></li>
					<li class="nav-item"><a class="nav-link" href="projects-grid-cards.jsp">News</a></li>
					<li class="nav-item"><a class="nav-link" href="cv.jsp">Support</a></li>
				</ul>
			</div>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item"><button style="background: none; border: 0px; outline: 0;" class="btn nav-link" id="btn-logIn" data-toggle="modal" data-target="#logInModal">Log in</button></li>
					<li class="nav-item"><button style="background: none; border: 0px; outline: 0;" class="btn nav-link" id="btn-signUp" data-toggle="modal" data-target="#signUpModal">Sign up</button></li>
				</ul>
			</div>
		</div>
	</nav>