<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
#div_style {
	width: 100%;
	text-align: center;
}

#table_style {
	border: 1px soild;
	border-collapse: collapse;
	margin: auto;
	font-family: 'Jeju Gothic', sans-serif;
}

#tr_style {
	padding: 30px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<div id="div_style">
		<table class="w3-table w3-hoverable w3-border" style="width: 80%; margin-left: auto;
	margin-right: auto;">
			<tr id="tr_style">
				<th class="w3-blue-grey" style="width:20%; height: 50px; padding-top: 15px; text-align: center">인기 순위</th>
				<th class="w3-blue-grey" style="width:20%; height: 50px; padding-top: 15px; text-align: center">스낵</th>
				<th class="w3-blue-grey" style="width:20%; height: 50px; padding-top: 15px; text-align: center">인스턴트</th>
				<th class="w3-blue-grey" style="width:20%; height: 50px; padding-top: 15px; text-align: center">음료</th>
				<th class="w3-blue-grey" style="width:20%; height: 50px; padding-top: 15px; text-align: center">주류</th>
			</tr>
			<tr align="center" id="tr_style">
				<td >
					<img style="width: 150px; height: 150px; display:block; margin: auto; padding-top: auto;" src="/controller/images/rank1.png">
				</td>
				<c:forEach items="${ result1 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result2 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result3 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result4 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
			</tr>
			<tr>
				<td id="td_style"><img  style="width: 150px; height: 150px; display:block; margin: auto; padding-top: auto;"
					src="/controller/images/rank2.png"></td>
				<c:forEach items="${ result1 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result2 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result3 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result4 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
			</tr>
			<tr>
				<td id="td_style"><img  style="width: 150px; height: 150px; display:block; margin: auto; padding-top: auto;"
					src="/controller/images/rank3.png"></td>
				<c:forEach items="${ result1 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result2 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result3 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result4 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
			</tr>
		</table>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>