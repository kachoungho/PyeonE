<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="se"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<se:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
		<meta http-equiv="Refresh" content="0; url=${pageContext.request.contextPath}/j_spring_security_logout">

		<script type="text/javascript">
			alert("퇴근 처리가 완료되었습니다.");
			history.go(1);
		</script>
	</se:authorize>
	<se:authorize access="hasAuthority('ROLE_MANAGER')">
		<meta http-equiv="Refresh" content="0; url=${pageContext.request.contextPath}/j_spring_security_logout">

		<script type="text/javascript">
			alert("퇴근 처리가 완료되었습니다.");
			history.go(1);
		</script>
	</se:authorize>
</body>
</html>