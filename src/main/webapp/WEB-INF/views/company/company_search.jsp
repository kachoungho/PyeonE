<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<script type="text/javascript">
	function button_event(btn) {
		var name = btn;
		var val = document.forms[name].elements['id'].value;

		if (val != null) {
			if (confirm("[" + val + "]" + "님의 정보를 정말로 삭제하시겠습니까?") == true) {
				document.forms[name].submit();
			} else {
				return false;
			}
		}
	}
</script>
<title>관리자/지점장 선택 후 리스트 출력</title>
</head>
<body>

	<form action="${pageContext.request.contextPath}/company/com_search"
		method="post">
		<select class="com_stock_select1" style="margin-left: 10%" name="position">
			<option value="all">전체 검색</option>
			<option value="admin">관리자</option>
			<option value="manager">지점장</option>
		</select> &nbsp;&nbsp; <input class="com_stock_button" width="40" type="image"
			src="/controller/resources/images/choice.png" alt="submit">
	</form>
	<div
		style="width: 80%; display: block; margin-left: auto; margin-right: auto;">
		<table class="w3-table w3-hoverable w3-border">
			<thead>
				<tr class="w3-blue-grey">
					<th style="width: 10%; text-align: center">아이디</th>
					<th style="width: 10%; text-align: center">이 름</th>
					<th style="width: 10%; text-align: center">직 책</th>
					<th style="width: 15%; text-align: center">전화번호</th>
					<th style="width: 10%; text-align: center">생년월일</th>
					<th style="width: 20%; text-align: center">주 소</th>
					<th style="width: 10%; text-align: center">성 별</th>
					<th style="width: 5%; text-align: center">지 점</th>
					<th style="width: 5%; text-align: center">수 정</th>
					<th style="width: 5%; text-align: center">삭 제</th>
				</tr>
			</thead>

			<c:forEach items="${ result }" var="member">
				<tbody>
					<tr class="odd">
						<td style="padding-top: 20px; text-align: center">${ member.id }</td>
						<td style="padding-top: 20px; text-align: center">${ member.name }</td>
						<td style="padding-top: 20px; text-align: center">${ member.position }</td>
						<td style="padding-top: 20px; text-align: center">${ member.phone }</td>
						<td style="padding-top: 20px; text-align: center">${ member.age }</td>
						<td style="padding-top: 20px; text-align: center">${ member.address }${ member.address2 }</td>
						<td style="padding-top: 20px; text-align: center">${ member.gender }</td>
						<td style="padding-top: 20px; text-align: center">${ member.area }</td>
						<td style="padding-top: 20px; text-align: center"><input class="button_center" width="40"
							type="image" src="/controller/resources/images/update.png"
							alt="button"
							onclick="document.location.href='${pageContext.request.contextPath}/company/com_updateForm?id=${member.id}'">
						<td style="padding-top: 20px; text-align: center">
							<form
								action="${pageContext.request.contextPath}/company/com_delete"
								method="POST" name="${member.id}">

								<input type="hidden" name="id" value="${member.id}"> <input
									class="button_center" width="40" type="image"
									src="/controller/resources/images/delete.png" alt="submit"
									onclick="button_event('${member.id}');return false;">
							</form>
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
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
	<br>
	<br>
	<br>
</body>
</html>