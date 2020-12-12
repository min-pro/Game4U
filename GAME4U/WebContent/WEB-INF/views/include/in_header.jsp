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