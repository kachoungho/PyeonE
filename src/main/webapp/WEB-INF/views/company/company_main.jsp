<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<title>본사 첫 페이지</title>
</head>
<body>
	<c:out value="${memoMap['7'] }" />
	<div style="float: left; width: 50%; margin-top: 10px;">
		<table class="ex1">
			<thead>
				<tr>
					<th style="text-align: left; background-color: #FFFFFF;"><font
						color="#054A75"> 발주 미승인건</font> <c:if test="${ count != 0 }">
							<font color=red> ( ${ count } 건 ) </font>
						</c:if> <input style="float: right; margin-right: 20px;" type="image"
						src="/controller/resources/images/more.png" alt="button"
						onclick="document.location.href='${pageContext.request.contextPath}/company/com_orderApproval'" /></th>
				</tr>
			</thead>
		</table>
		<div
			style="width: 90%; display: block; margin-left: auto; margin-right: auto;">
			<table class="w3-table w3-hoverable w3-border">
				<thead>
					<tr class="w3-blue-grey">
						<th style="width: 10%; text-align: center">제품명</th>
						<th style="width: 10%; text-align: center">수량</th>
						<th style="width: 10%; text-align: center">카테고리</th>
						<th style="width: 10%; text-align: center">지점</th>
						<th style="width: 10%; text-align: center">발주시간</th>
						<th style="width: 10%; text-align: center">상태</th>
					</tr>
				</thead>

				<c:forEach items="${result }" var="list">
					<tbody>
						<tr>
							<td style="padding-top: 15px; text-align: center">${ list.item_name }</td>
							<td style="padding-top: 25px; text-align: center">${ list.count }</td>
							<td style="padding-top: 25px; text-align: center">${ list.category }</td>
							<td style="padding-top: 25px; text-align: center">${ list.area }</td>
							<td style="padding-top: 15px; text-align: center">${ list.p2_time }</td>
							<td style="padding-top: 25px; text-align: center">${ list.state }</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		<br> <br>

		<table class="ex1">
			<thead>
				<tr>
					<th style="text-align: left; background-color: #FFFFFF;"><font
						color="#054A75"> 재고 요청 게시판 </font><input
						style="float: right; margin-right: 20px;" type="image"
						src="/controller/resources/images/more.png" alt="button"
						onclick="document.location.href='${pageContext.request.contextPath}/company/req_board_list'" /></th>
				</tr>
			</thead>
		</table>
		<div
			style="width: 90%; display: block; margin-left: auto; margin-right: auto;">
			<table class="w3-table w3-hoverable w3-border">
				<thead>
					<tr class="w3-blue-grey">
						<th style="width: 80%; text-align: center">제목</th>
						<th style="width: 20%; text-align: center">작성일</th>
					</tr>
				</thead>
				<sec:authentication property="name" var="LoingUser" />
				<c:forEach items="${ reqlist }" var="reqlist">
					<tbody>
						<tr>
							<td style="padding-top: 25px; text-align: center"><a
								href="${pageContext.request.contextPath}/company/req_board_contant?req_num=${reqlist.req_num }&sessionid=${LoingUser}">${ reqlist.title }</a></td>
							<td style="padding-top: 15px; text-align: center"><fmt:formatDate
									value="${ reqlist.req_date }" pattern="yyyy-MM-dd HH:mm" /></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
	</div>

	<div style="float: left; width: 50%;">
	<br>
		<center>
		<table>
			<tr>
				<td>

					<!-- 년 도--> <a
					href="${pageContext.request.contextPath}/company?year=${year-1}&month=${month}">◀</a>
					${year}년 <a
					href="${pageContext.request.contextPath}/company?year=${year+1}&month=${month}">▶</a>
					<!-- 월 --> <a
					href="${pageContext.request.contextPath}/company?year=${year}&month=${month-1}">◀</a>
					${month+1}월 <a
					href="${pageContext.request.contextPath}/company?year=${year}&month=${month+1}">▶</a>

				</td>
			</tr>
		</table>
		</center>

		<table class="w3-table w3-hoverable w3-border" >
			<!-- 달력 부분 -->
			<thead>
				<tr class="w3-blue-grey">
					<th width=70 style="color: red; text-align: center;" scope="col">일</th>
					<!-- 일=1 -->
					<th width=70 style="text-align: center;" scope="col">월</th>
					<!-- 월=2 -->
					<th width=70 style="text-align: center;" scope="col">화</th>
					<!-- 화=3 -->
					<th width=70 style="text-align: center;" scope="col">수</th>
					<!-- 수=4 -->
					<th width=70 style="text-align: center;" scope="col">목</th>
					<!-- 목=5 -->
					<th width=70 style="text-align: center;" scope="col">금</th>
					<!-- 금=6 -->
					<th width=70 style="color: blue; text-align: center;" scope="col">토</th>
					<!-- 토=7 -->
				</tr>
			</thead>
		</table>
		<!-- <table class="w3-table w3-hoverable w3-border" > -->
		<table style="width: 100%; background: #ffffff; TABLE-layout:fixed; font-family: 'Jeju Gothic', sans-serif;">
			<tr height=70>
				<c:set var="br" value="0" />
				<c:forEach var="i" begin="1" end="${startDay-1}">
					<td>&nbsp;</td>
					<c:set var="br" value="${br+1}" />
					<c:if test="${br == 7}">
						<br>
					</c:if>
				</c:forEach>

				<c:forEach var="a" begin="1" end="${end}" varStatus="idx">
					<td
						style="width: 90px; vertical-align: top; cursor: pointer; overflow: hidden; text-overflow: ellipsis;"
						onmouseover="this.style.backgroundColor='#ccc'"
						onmouseout="this.style.backgroundColor='#ffffff'"
						onclick="window.open('${pageContext.request.contextPath}/company/com_calendarMemo?year=${year }&month=${month}&day=${idx.index }',
						'window','width=250,height=330,left=500,top=50')">
						<nobr>
							<c:if test="${br==6 || br==13 || br==20 || br==27 || br==34}">
								<font style="color: blue">${a }<br>${memoMap[idx.index] }</font>
							</c:if>
							<c:if
								test="${br==0 || br==7 || br==14 || br==21 || br==28 || br==35}">
								<font style="color: red">${a }<br>${memoMap[idx.index] }</font>
							</c:if>
							<c:if
								test="${br!=0 && br!=7 && br!=14 && br!=21 && br!=28 && br!=35 && br!=6 && br!=13 && br!=20 && br!=27 && br!=34}">
								<font style="color: black">${a }<br>${memoMap[idx.index] }</font>
							</c:if>
							<br>
							<c:set var="br" value="${br+1}" />
							<c:if test="${(br%7) == 0 && a != end }">
						</nobr>
					</td>
			</tr>
			<tr height=70>
				</c:if>
				</c:forEach>
				<c:set var="brend" value="${br}" />
				<c:forEach var="i" begin="0" end="7">
					<c:if test="${(brend%7) != 0 }">
						<c:set var="brend" value="${brend+1}" />
					</c:if>
				</c:forEach>
				<c:forEach var="i" begin="${br}" end="${brend-1}">
					<td>&nbsp;</td>
				</c:forEach>
			</tr>
		</table>
		<br> <br> <br>
	</div>
</body>
</html>