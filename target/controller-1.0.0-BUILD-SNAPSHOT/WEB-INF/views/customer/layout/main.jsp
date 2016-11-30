<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<!--  xmlns="http://www.w3.org/1999/xhtml"> -->
<head>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/listcss.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css">
.menu {
	margin: auto;
	height: 40px;
}

.body {
	height: 100%;
	background: url(/controller/images/background10.png) no-repeat center
		center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	font-family: 'Jeju Gothic', sans-serif;
}

.header {
	height: 150px;
	font-family: 'Jeju Gothic', sans-serif;
}

.footer {
	height: 100px;
	overflow: auto;
}

.clearfix {
	overflow: auto;
}

</style>
<title>스프링 프로젝트</title>
</head>
<body>
	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>
	<hr>
	<div class="body">
		<tiles:insertAttribute name="body" />
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>