<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div
		style="width: 40%; display: block; margin-left: auto; margin-right: auto;">
		<form action="${pageContext.request.contextPath}/customer/req_board/update"
			method="post">
			<label
				style="font-size: 20px; font-family: 'Jeju Gothic', sans-serif;">
				재고 요청 게시판</label> <br>
			<c:forEach items="${list}" var="list">
				<input type="hidden" value="${list.req_num}" name="req_num">
				<input type="hidden" value="${LoingUser}" name="id">

				<table class="w3-table-all w3-hoverable w3-border">
					<thead>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">제목</th>
							<td style="text-align: center; width: 70%"><input
								style="width: 260px;" type="text" name="title"
								value="${list.title}"></td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">상품명</th>
							<td style="text-align: center; width: 70%"><input
								style="width: 260px;" type="text" name="item_name"
								value="${list.item_name}"></td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">작성자</th>
							<td style="text-align: center; width: 70%">${list.name}</td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">지점</th>
							<td style="text-align: center; width: 70%"><input
								style="width: 260px;" type="text" name="position"
								value="${list.position}"></td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">내용</th>
							<td style="text-align: center; width: 70%; height: 400px;"><textarea
									rows="15" cols="30" name="contant" wrap="hard"
									required="required">${list.contant }</textarea></td>
						</tr>
					</thead>
				</table>
				<br>
				<input style="display: block; float: right; margin-right: 50px;"
					width="40" type="image" src="/controller/images/update.png"
					alt="submit">
			</c:forEach>
		</form>
	</div>
	<br>
	<br>
	<br>
</body>
</html>