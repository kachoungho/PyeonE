<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
#div_style {
	width: 100%;
	text-align: center;
}

#table_style {
	border: 1px;
	border-collapse: collapse;
	margin: auto;
	font-family: 'Jeju Gothic', sans-serif;
}

#tr_style {
	padding: 10px;
}

#td_style {
	height: 250px;
}

#h_style {
	font-weight: bold;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<div id="div_style">
		<table id="table_style">
			<tr id="tr_style">
				<td style="width:20%" ><h4 id="h_style">인기 순위</h4></td>
				<td style="width:20%" ><h4 id="h_style">스낵</h4></td>
				<td style="width:20%" ><h4 id="h_style">인스턴트</h4></td>
				<td style="width:20%" ><h4 id="h_style">음료</h4></td>
				<td style="width:20%" ><h4 id="h_style">주류</h4></td>
			</tr>
			<tr id="tr_style">
				<td id="td_style"><img width="100" height="100"
					src="/controller/images/rank1.png"></td>
				<c:forEach items="${ result1 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result2 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result3 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result4 }" var="list" begin="0" end="0">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
			</tr>
			<tr>
				<td id="td_style"><img width="100" height="100"
					src="/controller/images/rank2.png"></td>
				<c:forEach items="${ result1 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result2 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result3 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result4 }" var="list" begin="1" end="1">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
			</tr>
			<tr>
				<td id="td_style"><img width="100" height="100"
					src="/controller/images/rank3.png"></td>
				<c:forEach items="${ result1 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result2 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result3 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
				</c:forEach>
				<c:forEach items="${ result4 }" var="list" begin="2" end="2">
					<td><img width="130" height="160" src="http://192.168.0.11:6060/controller/resources/item_image/${ list.item_image }"><br>${ list.item_name }</td>
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