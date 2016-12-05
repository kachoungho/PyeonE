<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,com.pyeon2.vo.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>급여 지급</title>

</head>
<body>
	<div
		style="width: 80%; display: block; margin-left: auto; margin-right: auto; margin-top: 30px;">
		<table class="w3-table w3-hoverable w3-border">
			<thead>
				<tr class="w3-blue-grey">
					<th style="width: 30%; text-align: center">이름</th>
					<th style="width: 30%; text-align: center">업무 시간</th>
					<th style="width: 30%; text-align: center">급여</th>
					<th style="width: 10%; text-align: center">지급</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="user">

				<tbody>
					<tr>
						<td style="padding-top: 20px; text-align: center">${user.userid }</td>
						<td style="padding-top: 20px;text-align: center">${user.hour }</td>
						<td style="padding-top: 20px;text-align: center"><fmt:formatNumber value="${user.money }"
								groupingUsed="true" />원</td>
						<td style="text-align: center"><input class="submit2" type="button" value="지급"
							onclick="document.location.href='${pageContext.request.contextPath}/pos/ps_paygive?userid=${user.userid }&id=${id}'"></td>
					</tr>
				</tbody>

			</c:forEach>
		</table>
	</div>
	<br>
	<br>
	<br>
</body>
</html>