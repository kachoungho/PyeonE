<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>POS MAIN</title>
</head>
<body>
	<div style="float: left; width: 50%; margin-top: 10px;">
		<table class="ex1">
			<thead>
				<tr>
					<th style="text-align: left; background-color: #FFFFFF;"><font
						color="#054A75"> 공지사항 </font><input
						style="float: right; margin-right: 20px;" type="image"
						src="/controller/resources/images/more.png" alt="button"
						onclick="document.location.href='${pageContext.request.contextPath}/pos/ps_notice_list'" /></th>
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

				<c:forEach items="${ list }" var="list">
					<tbody>
						<tr>
							<td style="padding-top: 20px; text-align: center"><a
								href="${pageContext.request.contextPath}/pos/ps_notice_contant?noticenum=${list.noticenum }">${list.title }</a></td>
							<td style="padding-top: 15px; text-align: center">${ list.noticedate }</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		<br> <br>
	</div>
	<div style="float: left; width: 50%; margin-top: 10px;">
		<table class="ex1">
			<thead>
				<tr>
					<th style="text-align: left; background-color: #FFFFFF;"><font
						color="#054A75"> 재고 부족 건</font> <c:if test="${ count != 0 }">
							<font color=red> ( ${ count } 건 ) </font>
						</c:if> <input style="float: right; margin-right: 20px;" type="image"
						src="/controller/resources/images/more.png" alt="button"
						onclick="document.location.href='${pageContext.request.contextPath}/pos/ps_order'" /></th>
				</tr>
			</thead>
		</table>
		<div
			style="width: 90%; display: block; margin-left: auto; margin-right: auto;">
			<table class="w3-table w3-hoverable w3-border">
				<thead>
					<tr class="w3-blue-grey">
						<th style="width: 33%; text-align: center">카테고리</th>
						<th style="width: 34%; text-align: center">상품명</th>
						<th style="width: 33%; text-align: center">재고량</th>
					</tr>
				</thead>


				<c:forEach items="${ list2 }" var="list">
					<c:if test="${ list2 != null }">
						<tbody>
							<tr>
								<td style="padding-top: 20px; text-align: center">${ list.category }</td>
								<td style="padding-top: 20px; text-align: center">${ list.item_name }</td>
								<td style="padding-top: 20px; text-align: center">${ list.count }</td>
							</tr>
						</tbody>
					</c:if>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>