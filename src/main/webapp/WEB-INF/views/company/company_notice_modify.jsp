<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>

<body>
	<br>
	<br>
	<br>
	<form
		action="${pageContext.request.contextPath}/company/com_notice_contant"
		method="post">
		<c:forEach items="${result }" var="list">
			<input type="hidden" value="${ list.noticenum}" name="noticenum">
			<table class="w3-table w3-hoverable w3-border" style="width: 40%; margin-left: auto;
	margin-right: auto;">
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">제목</th>
					<td style="text-align: center"><input style="width:100%;" type="text" name="title" value="${list.title }"></td>
				</tr>
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">이름</th>
					<td style="text-align: center">${list.name }</td>
				</tr>
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">직급</th>
					<td style="text-align: center">${list.position }</td>
				</tr>
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">내용</th>
					<td style="text-align: center;height: 400px;"><textarea rows="15" cols="50"
							name="contant">${list.contant }</textarea>
				</tr>
			</table>
			<br>
			<input style="display: block; float: right; margin-right: 30%;"
				width="40" type="image" src="/controller/resources/images/update.png"
				alt="submit">
		</c:forEach>
	</form>
	<br><br><br>
</body>
</html>