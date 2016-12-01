<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/login.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<sec:authorize ifAnyGranted="ROLE_ADMIN">
		<meta http-equiv="Refresh"
			content="0; url=${pageContext.request.contextPath}/company">
	</sec:authorize>
	<sec:authorize ifAnyGranted="ROLE_USER ,ROLE_MANAGER">
		<meta http-equiv="Refresh"
			content="0; url=${pageContext.request.contextPath}/pos">
	</sec:authorize>
	<sec:authorize ifAnyGranted="ROLE_CUS">
		<meta http-equiv="Refresh"
			content="0; url=${pageContext.request.contextPath}/customer">
	</sec:authorize>
	<section class="container">
		<article class="half">
			<h1>PMART</h1>
			<div class="tabs">
				<span class="tab signin active"><a href="#signin">로그인</a></span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<c:url value="/j_spring_security_check" var="loginURL"></c:url>
					<form action="${loginURL}" method="post">
						<label for="userid">아이디</label> <input type="text"
							name="j_username" id="userid" class="inpt" required="required"
							placeholder="아이디 입력"> <label for="password">비밀번호</label>
						<input type="password" name="j_password" id="password"
							class="inpt" required="required" placeholder="비밀번호 입력">

						<div class="submit-wrap">
							<input type="submit" value="로그인" class="submit">
							<c:if test="${check == 1}">
								<a href="${pageContext.request.contextPath}/cus_idPwd"
									class="more">아이디 / 비밀번호 찾기</a>
								<a href="${pageContext.request.contextPath}/cus_join"
									class="more">회원 가입</a>
								<a href="${pageContext.request.contextPath}/customer"
									class="more">메인으로</a>
							</c:if>
						</div>
					</form>
				</div>

			</div>
		</article>
	</section>
</body>
</html>