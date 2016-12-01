<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>

<sec:authorize access="hasAuthority('ROLE_CUS')">
	<meta http-equiv="Refresh"
		content="0; url=${pageContext.request.contextPath}/customer/req_board/list">
</sec:authorize>
<sec:authorize access="hasAuthority('ROLE_ADMIN')">
	<meta http-equiv="Refresh"
		content="0; url=${pageContext.request.contextPath}/company/req_board_list">
</sec:authorize>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>