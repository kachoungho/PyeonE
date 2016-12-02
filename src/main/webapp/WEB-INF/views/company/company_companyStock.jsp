<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/company/com_companyStock"
		method="post">
		<select class="com_stock_select1" style="margin-left: 10%" name="category">
			<option value="all">전체보기</option>
			<option value="음료">음료</option>
			<option value="스낵">스낵</option>
			<option value="인스턴트">인스턴트</option>
			<option value="주류">주류</option>
		</select> <input class="com_stock_button" width="40" type="image"
			src="/controller/resources/images/choice.png" alt="submit"> <input
			style="margin-top: 4.5%; float: right; margin-right: 10%;"
			class="submit" type="button" value="신규 제품 추가"
			onclick="document.location.href='${pageContext.request.contextPath}/company/com_newproduct'" />
	</form>

	<c:if test="${result == null}">
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
	</c:if>
	<div
		style="width: 80%; display: block; margin-left: auto; margin-right: auto;">
		<c:if test="${result != null}">
			<br>
			<br>
			<br>
			<table class="w3-table w3-hoverable w3-border">
				<thead>
					<tr class="w3-blue-grey">
						<th style="width: 10%; text-align: center">상품 이미지</th>
						<th style="width: 10%; text-align: center">카 테 고 리</th>
						<th style="width: 10%; text-align: center">상 품 코 드</th>
						<th style="width: 10%; text-align: center">상 품 명</th>
						<th style="width: 10%; text-align: center">원 가</th>
						<th style="width: 10%; text-align: center">소비자 가격</th>
						<th style="width: 10%; text-align: center">재고 수량</th>
					</tr>
				</thead>
				<c:forEach items="${result}" var="list">
					<tbody>
						<tr class="odd">
							<td style="padding-bottom: 13px; text-align: center"><img width="70" height="70"
								src="/controller/resources/item_image/${list.item_image}"></td>
							<td style="padding-top: 32px; text-align: center">${list.category}</td>
							<td style="padding-top: 32px; text-align: center">${list.item_code}</td>
							<td style="padding-top: 32px; text-align: center">${list.item_name}</td>
							<td style="padding-top: 32px; text-align: center"><fmt:formatNumber value="${list.cost}"
									groupingUsed="true" />원</td>
							<td style="padding-top: 32px; text-align: center"><fmt:formatNumber value="${list.price}"
									groupingUsed="true" />원</td>
							<td style="padding-top: 32px; text-align: center">${list.count}개</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<div>
		<ul class="com_stock_li-paging">
			<c:if test="${pageMaker.prev }">
				<li><a
					href="${pageContext.request.contextPath}/company/com_companyStock?page=${pageMaker.startPage - 1 }&category=${category}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
					<a
					href="${pageContext.request.contextPath}/company/com_companyStock?page=${idx}&category=${category}">${idx }</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<li><a
					href="${pageContext.request.contextPath}/company/com_companyStock?page=${pageMaker.endPage + 1 }&category=${category}">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>