<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<sec:authentication property="name" var="LoingUser" />
<meta http-equiv="Refresh" content="0; url=${pageContext.request.contextPath}/pos?id=${LoingUser}">
<script type="text/javascript">
	alert("알바 로그인 성공");
	history.go(1);
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>

</body>
</html>