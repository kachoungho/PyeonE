<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>발주 승인</title>
</head>
<body>
	<br>
	<br>
	<br>
	
	<div
		style="width: 80%; display: block; margin-left: auto; margin-right: auto;">
		<table class="w3-table w3-hoverable w3-border">
			<thead>
				<tr class="w3-blue-grey">
					<th style="width: 10%; text-align: center">카테고리</th>
					<th style="width: 10%; text-align: center">상품 코드</th>
					<th style="width: 20%; text-align: center">상 품 명</th>
					<th style="width: 10%; text-align: center">수 량</th>
					<th style="width: 10%; text-align: center">지 점</th>
					<th style="width: 20%; text-align: center">발주 요청 시간</th>
					<th style="width: 10%; text-align: center">발주 승인</th>
					<th style="width: 10%; text-align: center">발주 미승인</th>
				</tr>
			</thead>


			<c:forEach items="${orderList}" var="orderList">
				<tbody>
					<form action="com_orderApproval" method="post">
						<input type="hidden" name="item_code" value="${orderList.item_code}"> 
						<input type="hidden" name="count" value="${orderList.count}"> 
						<input type="hidden" name="area" value="${orderList.area}"> 
						<input type="hidden" name="item_name" value="${orderList.item_name}">
						<input type="hidden" name="category" value="${orderList.category}">
						<input type="hidden" name="p2_time" value="${orderList.p2_time}">
						<tr>
							<td style="padding-top: 20px; text-align: center">${orderList.category}</td>
							<td style="padding-top: 20px;text-align: center">${orderList.item_code}</td>
							<td style="padding-top: 20px;text-align: center">${orderList.item_name}</td>
							<td style="padding-top: 20px;text-align: center">${orderList.count}</td>
							<td style="padding-top: 20px;text-align: center">${orderList.area}</td>
							<td style="padding-top: 20px;text-align: center">${orderList.p2_time}</td>
							<td style="text-align: center"><input class="submit2" type="submit"
								value="승인"></td>
							<td style="text-align: center"><input class="submit2" type="button"
								value="미승인"
								onclick="document.location.href='${pageContext.request.contextPath}/company/com_orderCancel?item_code=${orderList.item_code}&area=${orderList.area}&count=${orderList.count}&item_name=${orderList.item_name}&category=${orderList.category}&p2_time=${orderList.p2_time}'"></td>
						</tr>
					</form>
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