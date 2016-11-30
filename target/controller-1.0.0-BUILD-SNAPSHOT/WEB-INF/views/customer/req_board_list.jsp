<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>
	<sec:authentication property="name" var="LoingUser" />
	
	<form action="${pageContext.request.contextPath}/customer/req_board_write"
		method="post">
		<input type="hidden" name="id" value="${LoingUser}">
		<div style="width:80%; display:block; margin-left: auto; margin-right: auto;" >
			<table class="w3-table w3-hoverable w3-border">
				<thead>
					<tr class="w3-blue-grey">
						<th style="width: 10%; text-align: center">글번호</th>
						<th style="width: 50%; text-align: center">제 목</th>
						<th style="width: 20%; text-align: center">작성자</th>
						<th style="width: 20%; text-align: center">작성일</th>
					</tr>
				</thead>
				<c:forEach items="${result }" var="list">
					<tr>
						<td style="text-align: center">${list.req_num }</td>
						<td><a
							href="${pageContext.request.contextPath}/customer/req_board_contant?req_num=${list.req_num}&sessionid=${LoingUser}">${list.title }</a></td>
						<td style="text-align: center">${list.name}</td>
						<td style="text-align: center"><fmt:formatDate value="${list.req_date }"
								pattern="yyyy-MM-dd-ss:ss" /></td>
					</tr>
				</c:forEach>
			</table>
			<br> <input style="display: block; float: right; margin-right: 70px;" width="40"
			type="image" src="/controller/images/write.png"
			alt="submit">
		</div>
	</form>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>