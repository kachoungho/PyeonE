<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div
		style="width: 90%; display: block; margin-left: auto; margin-right: auto;">
		<table class="w3-table w3-hoverable w3-border">
			<thead>
				<tr class="w3-blue-grey">
					<th style="width: 10%; text-align: center">카테고리</th>
					<th style="width: 10%; text-align: center">상품 코드</th>
					<th style="width: 25%; text-align: center">상 품 명</th>
					<th style="width: 10%; text-align: center">신청 갯수</th>
					<th style="width: 10%; text-align: center">지 점</th>
					<th style="width: 20%; text-align: center">발주 신청 날짜</th>
					<th style="width: 10%; text-align: center">상 태</th>
					<th style="width: 5%; text-align: center">제거</th>
				</tr>
			</thead>


			<c:forEach items="${list}" var="list" varStatus="idx">
				<tbody>
					<tr>
						<td style="padding-top:15px; text-align: center">${list.category }</td>
						<td style="padding-top:15px; text-align: center">${list.item_code }</td>
						<td style="padding-top:15px; text-align: center">${list.item_name }</td>
						<td style="padding-top:15px; text-align: center"><fmt:formatNumber value="${list.count}"
									groupingUsed="true" />개</td>
						<td style="padding-top:15px; text-align: center">${list.area }</td>
						<td style="padding-top:15px; text-align: center">${list.p2_time }</td>
						<td style="padding-top:15; text-align: center">${list.state }</td>
						<td style="padding-top:10px; text-align: center"><input width="30" type="image"
							src="/controller/resources/images/delete.png" alt="button"
							onclick="document.location.href='${pageContext.request.contextPath}/pos/ps_orderStates?item_code=${list.item_code}&p2_time=${list.p2_time}&area=${list.area}'">
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
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