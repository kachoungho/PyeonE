<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="div_container2">
		<div class="div_row" style="margin-top: 30px;">
			<div class="div_col2">
				<form
					action="${pageContext.request.contextPath}/company/com_importSpendList"
					method="post">
					<br>
					<br> <select class="slt_insert3" name="area">
						<option value="">지역 선택</option>
						<option value="판교">판교</option>
						<option value="야탑">야탑</option>
						<option value="정자">정자</option>
					</select> <select class="slt_insert3" name="year">
						<option value="">년도</option>
						<option value="2016">2016</option>
						<option value="2015">2015</option>
						<option value="2014">2014</option>
						<option value="2013">2013</option>
						<option value="2016">2012</option>
						<option value="2015">2011</option>
						<option value="2014">2010</option>
						<option value="2013">2009</option>
					</select> <select class="slt_insert3" name="month">
						<option value="">월</option>
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
					</select> <input class="submit" type="submit" value="검색">
				</form>
				<br>
				<br>

				<c:if test="${year != '' && month != '' }">
					<h4>지역 : ${area } / ${year }년 / ${month }월</h4>
				</c:if>

				<c:if test="${result == null }">
					<h2>내용이 없습니다.</h2>
				</c:if>
				<c:if test="${result != null }">
					<table class="table">
						<tr>
							<th class="th">지역</th>
							<th class="th">제목</th>
							<th class="th">수입 / 지출</th>
							<th class="th">금액</th>
							<th class="th">날짜</th>
						</tr>
						<c:forEach items="${ result}" var="list">
							<tr>
								<td class="td1">${list.area }</td>
								<td class="td1">${list.title }</td>
								<td class="td1">${list.content }</td>
								<td class="td1"><fmt:formatNumber value="${list.pay }" groupingUsed="true"/>원</td>
								<td class="td1"><fmt:formatDate value="${list.dayda }"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>

						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>

						<tr>
							<td class="td1">수입</td>
							<td class="td1"><fmt:formatNumber value="${pay1 }" groupingUsed="true"/>원</td>
							<td class="td1">지출</td>
							<td class="td1"><fmt:formatNumber value="${pay2 }" groupingUsed="true"/>원</td>
							<td class="td1"></td>
						</tr>
						<tr>
							<td class="td1">순이익</td>
							<td class="td1"></td>
							<td class="td1"></td>
							<td class="td1"><fmt:formatNumber value="${total }" groupingUsed="true"/>원</td>
							<td class="td1"></td>
						</tr>
					</table>
				</c:if>

				<div>
					<ul class="com_stock_li-paging">
						<c:if test="${pageMaker.prev }">
							<li><a
								href="com_importSpendList?page=${pageMaker.startPage - 1 }&year=${year}&month=${month}&area=${area}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
								<a
								href="com_importSpendList?page=${idx}&year=${year}&month=${month}&area=${area}">${idx }</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
							<li><a
								href="com_importSpendList?page=${pageMaker.endPage + 1 }&year=${year}&month=${month}&area=${area}">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>