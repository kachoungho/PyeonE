<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf">

<sec:authorize access="hasAuthority('ROLE_ADMIN')">
	<meta http-equiv="Refresh" content="0; url=company">
	<script type="text/javascript">
		alert("관리자 로그인 성공");
		history.go(1);
	</script>
</sec:authorize>

<sec:authentication property="name" var="LoingUser" />
<sec:authorize access="hasAuthority('ROLE_USER')">
	<meta http-equiv="Refresh"
		content="0; url=${pageContext.request.contextPath}/pos/usermoneystart?id=${LoingUser}">
</sec:authorize>

<sec:authorize access="hasAuthority('ROLE_MANAGER')">
	<meta http-equiv="Refresh" content="0; url=${pageContext.request.contextPath}/pos?id=${LoingUser}">
	<script type="text/javascript">
		alert("지점장 로그인 성공");
		history.go(1);
	</script>
</sec:authorize>


<sec:authorize access="hasAuthority('ROLE_CUS')">
	<meta http-equiv="Refresh"
		content="0; url=${pageContext.request.contextPath}/customer">
</sec:authorize>