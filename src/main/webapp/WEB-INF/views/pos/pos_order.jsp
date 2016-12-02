<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, com.pyeon2.vo.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<sec:authentication property="name" var="name" />
	<div style="overflow: auto;">
		<div style="float: left; width: 50%;">
			<div
				style="width: 98%; display: block; margin-left: auto; margin-right: auto;">
				<table class="w3-table w3-hoverable w3-border">
					<thead>
						<tr class="w3-blue-grey">
							<th style="width: 15%; text-align: center">��ǰ<br>�̹���
							</th>
							<th style="width: 15%; text-align: center; padding-top: 18px;">ī�װ�</th>
							<th style="width: 7%; text-align: center; padding-top: 18px;">��ǰ�ڵ�</th>
							<th style="width: 27%; text-align: center; padding-top: 18px;">��ǰ��</th>
							<th style="width: 13%; text-align: center; padding-top: 18px;">����</th>
							<th style="width: 13%; text-align: center">�Һ���<br>����
							</th>
							<th style="width: 10%; text-align: center; padding-top: 18px;">��
								��</th>
						</tr>
					</thead>

					<c:forEach items="${result}" var="list">
						<tbody>
							<tr>
								<td style="padding-top: 10px; text-align: center"><img
									width="30" height="50"
									src="/controller/resources/item_image/${list.item_image }"></td>
								<td style="padding-top: 20px; text-align: center">${list.category}</td>
								<td style="padding-top: 20px; text-align: center">${list.item_code}</td>
								<td style="padding-top: 20px; text-align: center">${list.item_name}</td>
								<td style="padding-top: 20px; text-align: center"><fmt:formatNumber
										value="${list.cost}" groupingUsed="true" />��</td>
								<td style="padding-top: 20px; text-align: center"><fmt:formatNumber
										value="${list.price}" groupingUsed="true" />��</td>
								<td style="padding-top: 20px; text-align: center"><input
									width="20" type="image"
									src="/controller/resources/images/check.png" alt="button"
									onclick="document.location.href='${pageContext.request.contextPath}/pos/ps_order?item_code=${list.item_code}&item_name=${list.item_name}&category=${list.category }&page=${pageMaker.cri.page }&name=${name}'">
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
							href="${pageContext.request.contextPath}/pos/ps_order?page=${pageMaker.startPage - 1 }">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
							<a
							href="${pageContext.request.contextPath}/pos/ps_order?page=${idx}">${idx }</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
						<li><a
							href="${pageContext.request.contextPath}/pos/ps_order?page=${pageMaker.endPage + 1 }">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
			<br> <br> <br>
		</div>

		<div style="float: left; width: 50%;">
			<div
				style="width: 70%; display: block; margin-left: auto; margin-right: auto;">
				<form action="${pageContext.request.contextPath}/pos/ps_order"
					method="post">

					<input type="hidden" name="state" value="���� ���">
					<table class="w3-table w3-hoverable w3-border">
						<tr>
							<th class="w3-blue-grey" style="width: 2%; text-align: center">��ǰ �ڵ�</th>
							<td colspan="2"><input id="input_order" type="text"
								name="item_code" value="${item_code}"></td>
						</tr>
						<tr>
							<th class="w3-blue-grey" style="width: 20%; text-align: center">��ǰ �̸�</th>
							<td colspan="2"><input id="input_order" type="text"
								name="item_name" value="${item_name}"></td>
						</tr>
						<tr>
							<th class="w3-blue-grey" style="width: 20%; text-align: center">��ǰ ����</th>
							<td colspan="2"><input id="input_order" type="text"
								name="count"></td>
						</tr>
						<tr>
							<th class="w3-blue-grey" style="width: 20%; text-align: center">ī�װ�</th>
							<td colspan="2"><input id="input_order" type="text"
								name="category" value="${category}"></td>
						</tr>
						<tr>
							<th class="w3-blue-grey" style="width: 20%; text-align: center">�� ��</th>
							<td><input id="input_order" type="text" name="area"
								value="${area}" readonly="readonly"></td>
							<td><input class="com_stock_button" width="30" type="image"
								src="/controller/resources/images/add.png" alt="submit"></td>
						</tr>
					</table>
				</form>
			</div>
			<br> <br> <br>

			<div
				style="width: 95%; display: block; margin-left: auto; margin-right: auto;">
				<table class="w3-table w3-hoverable w3-border">
					<thead>
						<tr class="w3-blue-grey">
							<th style="width: 10%; text-align: center">��ǰ<br>�ڵ�
							</th>
							<th style="width: 20%; text-align: center; padding-top: 15px;">��ǰ�̸�
							</th>
							<th style="width: 10%; text-align: center; padding-top: 15px">�� ��</th>
							<th style="width: 10%; text-align: center">ī��<br>��</th>
							<th style="width: 10%; text-align: center; padding-top: 15px";>�� ��</th>
							<th style="width: 20%; text-align: center; padding-top: 15px;">��û�ð�
							</th>
							<th style="width: 10%; text-align: center">��û<br>����
							</th>
						</tr>
					</thead>
					<c:forEach items="${list }" var="list">
						<tbody>
							<tr>
								<td style="padding-top: 20px; text-align: center">${list.item_code }</td>
								<td style=" text-align: center">${list.item_name }</td>
								<td style="padding-top: 20px; text-align: center">${list.count }</td>
								<td style="padding-top: 20px; text-align: center">${list.category }</td>
								<td style="padding-top: 20px; text-align: center">${list.area}</td>
								<td style=" text-align: center">${list.p2_time }</td>
								<td style="padding-top: 20px; text-align: center"><input width="20" type="image"
									src="/controller/resources/images/delete.png" alt="button"
									onclick="document.location.href='ps_order_temp_delete?item_code=${list.item_code}&area=${list.area}&page=${pageMaker.cri.page }'">
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<form action="${pageContext.request.contextPath}/pos/ps_order_temp"
					method="post">
					<input style="float: right; margin-right: 2%;" width="30"
						type="image" src="/controller/resources/images/check.png"
						alt="submit">
				</form>
			</div>
		</div>
	</div>
</body>
</html>