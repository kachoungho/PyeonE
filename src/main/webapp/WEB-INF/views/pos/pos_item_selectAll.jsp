<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, com.pyeon2.vo.*"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<sec:authentication property="name" var="LoingUser" />
	<form action="ps_item_select_now" method="post">
		<input type="hidden" value="${pageMaker.cri.page}"> <input
			type="hidden" name="id" value="${LoingUser}"> <select
			class="com_stock_select1" name="category">
			<option value="음료">음료</option>
			<option value="스낵">스낵</option>
			<option value="인스턴트">인스턴트</option>
			<option value="주류">주류</option>
		</select> <label class="com_stock_label">검색할 제품명 </label> <input
			class="com_stock_input" type="text" name="item_name"> <input
			class="com_stock_button" width="40" type="image"
			src="/controller/resources/images/choice.png" alt="submit">
	</form>

	<div
		style="width: 90%; display: block; margin-left: auto; margin-right: auto;">
		<table class="w3-table w3-hoverable w3-border">
			<thead>
				<tr class="w3-blue-grey">
					<th style="width: 10%; text-align: center">상품 이미지</th>
					<th style="width: 10%; text-align: center">카 테 고 리</th>
					<th style="width: 10%; text-align: center">상 품 코 드</th>
					<th style="width: 30%; text-align: center">상 품 명</th>
					<th style="width: 10%; text-align: center">소비자 가격</th>
					<th style="width: 10%; text-align: center">재고 수량</th>
					<th style="width: 10%; text-align: center">판 매 량</th>
					<th style="width: 10%; text-align: center">재고 제거</th>
				</tr>
			</thead>
			<!-- 	result는 controller의 addObject로 부터 가져온다. -->

			<c:forEach items="${result }" var="product" varStatus="idx">
				<tbody>
					<tr>
						<td style="padding-bottom:10px; text-align: center"><img width="50" height="50"
							src="/controller/resources/item_image/${product.item_image }"></td>
						<td style="padding-top:20px; text-align: center">${product.category }</td>
						<td style="padding-top:20px; text-align: center">${product.item_code }</td>
						<td style="padding-top:20px; text-align: center">${product.item_name }</td>
						<td style="padding-top:20px; text-align: center"><fmt:formatNumber value="${product.price}"
									groupingUsed="true" />원</td>
						<td style="padding-top:20px; text-align: center"><fmt:formatNumber value="${product.count}"
									groupingUsed="true" />개</td>
						<td style="padding-top:20px; text-align: center"><fmt:formatNumber value="${product.hit}"
									groupingUsed="true" />개</td>
						<td style="padding-top:20px; text-align: center"><input width="30" type="image"
							src="/controller/resources/images/delete.png" alt="button"
							onclick="document.location.href='ps_item_delete_now?item_code=${product.item_code}&area=${product.area}&page=${pageMaker.cri.page }'">
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>

	<div>
		<ul class="com_stock_li-paging">
			<c:if test="${pageMaker.prev }">
				<li><a
					href="ps_item_selectAll?page=${pageMaker.startPage - 1 }&id=${id}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
					<a href="ps_item_selectAll?page=${idx}&id=${id}">${idx }</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<li><a
					href="ps_item_selectAll?page=${pageMaker.endPage + 1 }&id=${id}">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>