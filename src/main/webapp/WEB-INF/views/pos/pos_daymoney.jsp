<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.th {
	border-bottom: 1px solid #000000;
	border-right: 1px solid #000000;
	background-color: #607D8B;
	color: white;
	text-align: center;
	font-family: 'Jeju Gothic', sans-serif;
	height: 50px;
}
</style>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ps_daymoneyconfirm" method="POST">
		<div class="div_container">
			<div class="div_row" style="margin-top: 30px;">
				<div class="div_col">
					<table class="table">
						<tr>
							<th colspan="3" class="th">수입</th>
						</tr>
						<tr>
							<th class="th">제목</th>
							<th class="th">금액</th>
							<th class="th">날짜</th>
						</tr>
						<c:forEach items="${ result1}" var="list">
							<tr>
								<td class="td1">${list.sold }</td>
								<td class="td1"><fmt:formatNumber value="${list.pay }" groupingUsed="true"/>원</td>
								<td class="td1">${list.sal_time }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="div_col">
					<table class="table">
						<tr>
							<th colspan="3" class="th">지출</th>
						</tr>
						<tr>
							<td class="th">제목</td>
							<td class="th">금액</td>
							<td class="th">날자</td>
						</tr>
						<c:forEach items="${ result2}" var="list2">
							<tr>
								<td class="td1">${list2.spend }</td>
								<td class="td1"><fmt:formatNumber value="${list2.pay }" groupingUsed="true"/>원</td>
								<td class="td1">${list2.sal_time }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				
			</div>
			<br><br><br><br><br>
			<input type="hidden" value="${ area}" name="area"> 
			<input style="float: right; " class="submit" type="submit" value="정산">
			<br><br><br><br><br><br><br><br><br><br>
		</div>
	</form>
</body>
</html>