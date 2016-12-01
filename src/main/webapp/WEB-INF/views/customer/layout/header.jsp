<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/listcss.css">
<sec:authentication property="name" var="LoingUser" />

<nav class="w3-sidenav w3-white w3-animate-left w3-large"
	style="display: none; z-index: 5" id="mySidenav">
	<br> <br> <br>

	<sec:authorize ifNotGranted="ROLE_CUS">
		<a style="color: #054A75"
			href="${pageContext.request.contextPath}/customer/login"><i
			class="fa fa-lock" aria-hidden="true"></i>&nbsp;&nbsp;로그인</a>
	</sec:authorize>
	<sec:authorize ifNotGranted="ROLE_CUS">
		<a style="color: #054A75"
			href="${pageContext.request.contextPath}/cus_join"><i
			class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;&nbsp;회원가입</a>
	</sec:authorize>

	<sec:authorize access="hasAuthority('ROLE_CUS')">
		<a style="color: #054A75"
			href="${pageContext.request.contextPath}/j_spring_security_logout"><i
			class="fa fa-unlock-alt" aria-hidden="true"></i>&nbsp;&nbsp;로그아웃</a>
	</sec:authorize>

	<br> <br> <br> <a
		href="${pageContext.request.contextPath}/customer"><i
		class="fa fa-search" aria-hidden="true"></i>&nbsp;&nbsp;상품 검색</a>
	<sec:authorize ifNotGranted="ROLE_CUS">
		<a href="${pageContext.request.contextPath}/customer/login"><i
			class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;&nbsp;재고 요청 게시판</a>
	</sec:authorize>
	<sec:authorize access="hasAuthority('ROLE_CUS')">
		<a href="${pageContext.request.contextPath}/customer/req_board/list"><i
			class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;&nbsp;재고 요청 게시판</a>
	</sec:authorize>
	<a href="${pageContext.request.contextPath}/customer/cus_hit"><i
		class="fa fa-thumbs-o-up" aria-hidden="true"></i>&nbsp;&nbsp;인기 상품</a>

	<!-- <a href="javascript:void(0)" onclick="w3_close()" class="w3-closenav ">닫기 &times;</a> -->
</nav>

<div class="w3-overlay w3-animate-opacity" onclick="w3_close()"
	style="cursor: pointer" id="myOverlay"></div>


<div style="float: left; width: 33%; margin-top: 115px;">
	<span style="margin-left: 5%;" class="w3-opennav w3-xlarge"
		onclick="w3_open()">&#9776; MENU</span>

</div>

<div style="float: left; width: 34%">
	<a href="${pageContext.request.contextPath}/customer"><img
		style="margin-left: auto; margin-right: auto; margin-top: 20px; margin-bottom: 20px; display: block"
		alt="" src="/controller/images/Logo2.png"></a>
</div>

<div
	style="float: left; width: 33%; margin-top: 90px; text-align: right;">


</div>

<script>
	function w3_open() {
		document.getElementById("mySidenav").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}
	function w3_close() {
		document.getElementById("mySidenav").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}
</script>