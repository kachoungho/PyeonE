<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="div_container2">
		<div class="div_row" style="margin-top: 30px;">
			<div class="div_col2">
				<h3 class="h">정산 목록</h3>

				<form action="ps_daymoneyconfirm" method="post">
					<br>
					<br> <input type="hidden" name="area" value="${area }">
					<select class="slt_insert2" name="year">
						<option value="">전부</option>
						<option value="2016">2016</option>
						<option value="2015">2015</option>
						<option value="2014">2014</option>
						<option value="2013">2013</option>
						<option value="2016">2012</option>
						<option value="2015">2011</option>
						<option value="2014">2010</option>
						<option value="2013">2009</option>
					</select> <select class="slt_insert2" name="month">
						<option value="">전부</option>
						<option value="12">12</option>
						<option value="11">11</option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
					</select> <input class="submit" type="submit" value="선택">
				</form>
				<br>
				<br>
				<c:if test="${year == '' && month == '' }">
					<h4 class="h">모든 목록</h4>
				</c:if>
				<c:if test="${year != '' && month != '' }">
					<h4 class="h">${year }년/ ${month }월</h4>
				</c:if>

				<c:if test="${result == null }">
					<h2>내용이 없습니다.</h2>
				</c:if>
				<c:if test="${result != null }">
					<table class="table">
						<tr>
							<th class="th1">제목</th>
							<th class="th1">수입 / 지출</th>
							<th class="th1">금액</th>
							<th class="th1">날짜</th>
						</tr>
						<c:forEach items="${ result}" var="list">
							<tr>
								<td class="td1">${list.title }</td>
								<td class="td1">${list.content }</td>
								<td class="td1">${list.pay }</td>
								<td class="td1"><fmt:formatDate value="${list.dayda }"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>

						<tr>
							<td class="td1">수입</td>
							<td class="td1">${pay1 }</td>
							<td class="td1">지출</td>
							<td class="td1">${pay2 }</td>
						</tr>
						<tr>
							<td class="td1">순이익</td>
							<td class="td1"></td>
							<td class="td1"></td>
							<td class="td1">${total }</td>
						</tr>
					</table>
				</c:if>

				<div>
					<ul class="com_stock_li-paging">
						<c:if test="${pageMaker.prev }">
							<li><a
								href="ps_daymoneyconfirm?page=${pageMaker.startPage - 1 }&year=${year}&month=${month}&area=${area}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
								<a
								href="ps_daymoneyconfirm?page=${idx}&year=${year}&month=${month}&area=${area}">${idx }</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
							<li><a
								href="ps_daymoneyconfirm?page=${pageMaker.endPage + 1 }&year=${year}&month=${month}&area=${area}">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>