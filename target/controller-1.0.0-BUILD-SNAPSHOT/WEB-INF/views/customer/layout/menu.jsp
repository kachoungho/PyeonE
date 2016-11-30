<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="se"
	uri="http://www.springframework.org/security/tags"%>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/listcss.css">


<div>
	<ul class="w3-navbar w3-card-2 w3-center"
		style="background-color: #F1F5FA; font-family: 'Jeju Gothic', sans-serif;"><!-- #D5D9DF -->
		<li></li>
		<li style="width: 33.33%;"><a
			href="${pageContext.request.contextPath}/customer">상품 검색</a></li>
		<li style="width: 33.33%">
			<se:authorize ifNotGranted="ROLE_USER">
				<a href="cus_login">재고 요청 게시판</a>
			</se:authorize> 
			<se:authorize access="hasAuthority('ROLE_USER')">
				<a href="${pageContext.request.contextPath}/customer/req_board_list">재고 요청 게시판</a>
			</se:authorize>
		</li>
		<li style="width: 33.33%"><a href="${pageContext.request.contextPath}/customer/cus_hit">인기 상품</a></li>

	</ul>
</div>