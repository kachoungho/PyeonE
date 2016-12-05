<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,com.pyeon2.vo.*"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<title>Insert title here</title>
</head>
<body>

	<sec:authorize access="hasAuthority('ROLE_USER')">
		<form action="ps_selectpay" method="post">
	</sec:authorize>

	<sec:authorize access="hasAuthority('ROLE_MANAGER')">
		<form action="ps_selectpays" method="post">
	</sec:authorize>

	<sec:authentication property="name" var="LoingUser" />
	<input type="hidden" value="${LoingUser }" name="ids">
	<select style="margin-left: 10%" class="com_stock_select1" id="year" name="year">
		<option>--year--</option>
		<option value="" hidden=""></option>
		<option value="2014">2014</option>
		<option value="2015">2015</option>
		<option value="2016">2016</option>
	</select>
	<select class="com_stock_select1" id="year" name="month">
		<option>--month--</option>
		<option value="" hidden=""></option>
		<option value="01">1월</option>
		<option value="02">2월</option>
		<option value="03">3월</option>
		<option value="04">4월</option>
		<option value="05">5월</option>
		<option value="06">6월</option>
		<option value="07">7월</option>
		<option value="08">8월</option>
		<option value="09">9월</option>
		<option value="10">10월</option>
		<option value="11">11월</option>
		<option value="12">12월</option>
	</select>

	<input class="com_stock_button" width="40" type="image"
		src="/controller/resources/images/choice.png" alt="submit">

	<div
		style="width: 80%; display: block; margin-left: auto; margin-right: auto;">
		<table class="w3-table w3-hoverable w3-border">
			<thead>
				<tr class="w3-blue-grey">
					<th style="width: 10%; text-align: center">이름</th>
					<th style="width: 10%; text-align: center">년</th>
					<th style="width: 10%; text-align: center">월</th>
					<th style="width: 10%; text-align: center">지역</th>
					<th style="width: 10%; text-align: center">업무 시간</th>
					<th style="width: 10%; text-align: center">급여</th>
				</tr>
			</thead>
			<c:forEach items="${result}" var="user">
				<tbody>
					<tr>
						<td style="text-align: center">${user.userid }</td>
						<td style="text-align: center">${user.year }</td>
						<td style="text-align: center">${user.month }</td>
						<td style="text-align: center">${user.area }</td>
						<td style="text-align: center">${user.hour }</td>
						<td style="text-align: center"><fmt:formatNumber value="${user.money }"
								groupingUsed="true" />원</td>
					</tr>
			</c:forEach>
		</table>
	</div>
	</form>

	<br>
	<br>
	<br>
</body>
</html>