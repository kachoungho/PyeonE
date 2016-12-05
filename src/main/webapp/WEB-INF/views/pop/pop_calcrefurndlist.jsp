<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

input.submit {
	font-size: 15px;
	display: block;
	width: 50px;
	cursor: pointer;
	vertical-align: middle;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #263238;
	border: 1px solid #263238;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	font-family: 'Jeju Gothic', sans-serif;
}

input.submit:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}

.table {
	width: 100%;
	border: 0;
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 15px;
	text-align: center;
}


.inpt {
	width: 200px;
	height: 50px;
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 15px;
}
</style>
<title>바코드 리스트</title>
</head>
<body>
	<form action="pop_calcrefurnd_delete">
		<input type="hidden" name="billnum" value="${billnum }"> <input
			type="hidden" name="num" value="${num }"> <input
			type="hidden" name="area" value="${area }">
		<table class="table">
			<tr>
				<th style="width: 25%">코드번호</th>
				<th style="width: 25%">상품</th>
				<th style="width: 25%">개수</th>
				<th style="width: 25%">가격</th>
			</tr>
			<c:forEach items="${result }" var="list">
				<tr>
					<td style="width: 25%">${list.item_code }</td>
					<td style="width: 25%">${list.item_name }</td>
					<td style="width: 25%">${list.count}</td>
					<td style="width: 25%">${list.price }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4" align="center"><input class="submit" type="submit" value="환불"></td>
			</tr>
		</table>
		<br>
		<br>
		<br>

	</form>
</body>
</html>