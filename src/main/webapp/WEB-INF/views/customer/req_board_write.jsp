<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>재고 요청 게시판 글쓰기</title>
</head>
<body>
	<br>
	<br>
	<br>
	<div
		style="width: 40%; display: block; margin-left: auto; margin-right: auto;">
		<sec:authorize access="hasAuthority('ROLE_CUS')">
			<form
				action="${pageContext.request.contextPath}/customer/req_board/list"
				method="post">
		</sec:authorize>
		<sec:authorize access="hasAuthority('ROLE_ADMIN')">
			<form
				action="${pageContext.request.contextPath}/company/req_board_list"
				method="post">
		</sec:authorize>
		<input type="hidden" name="name" value="${name}"> <label
			style="font-size: 20px; font-family: 'Jeju Gothic', sans-serif;">
			재고 요청 게시판</label> <br>
		<table class="w3-table-all w3-hoverable w3-border">
			<thead>
				<tr>
					<th style="text-align: center; width: 30%" class="w3-blue-grey">제목</th>
					<td style="text-align: center; width: 70%"><input
						style="width: 260px;" type="text" name="title" required="required"></td>
				</tr>
				<tr>
					<th style="text-align: center; width: 30%" class="w3-blue-grey">상품명</th>
					<td style="text-align: center; width: 70%"><input
						style="width: 260px;" type="text" name="item_name"
						required="required"></td>
				</tr>
				<tr>
					<th style="text-align: center; width: 30%" class="w3-blue-grey">작성자</th>
					<td style="text-align: center; width: 70%">${name}</td>
				</tr>
				<tr>
					<th style="text-align: center; width: 30%" class="w3-blue-grey">지점</th>
					<td style="text-align: center; width: 70%"><input
						style="width: 260px;" type="text" name="position"
						required="required"></td>
				</tr>
				<tr>
					<th style="text-align: center; width: 30%" class="w3-blue-grey">내용</th>
					<td style="text-align: center; width: 70%; height: 400px;"><textarea
							rows="15" cols="30" name="contant" wrap="hard"
							required="required"></textarea></td>
				</tr>
			</thead>
		</table>
		<br> <input
			style="display: block; float: right; margin-right: 50px;" width="40"
			type="image" src="/controller/images/write.png" alt="submit">
		</form>
	</div>

	<br>
	<br>
	<br>
</body>


</html>