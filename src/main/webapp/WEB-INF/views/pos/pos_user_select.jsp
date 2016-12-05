<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- <link rel="stylesheet" type="text/css"
	href="/controller/resources/css/listcss.css"> -->
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
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


<title>아르바이트 멤버 현황</title>
</head>
<body>
	<br>
	<br>
	<br>
	<div
		style="width: 80%; display: block; margin-left: auto; margin-right: auto;">
		<table class="w3-table w3-hoverable w3-border">
			<thead>
				<tr class="w3-blue-grey">
					<th colspan="11"  style="text-align: center"><c:forEach items="${ area }" var="area">
					${ area }
					지점 아르바이트생 정보 현황
				</c:forEach></th>
				</tr>
				<tr class="w3-blue-grey">
					<th style="width: 10%; text-align: center">아이디</th>
					<th style="width: 10%; text-align: center">이 름</th>
					<th style="width: 10%; text-align: center">직 책</th>
					<th style="width: 15%; text-align: center">전화번호</th>
					<th style="width: 10%; text-align: center">생년월일</th>
					<th style="width: 25%; text-align: center">주 소</th>
					<th style="width: 10%; text-align: center">성 별</th>
					<th style="width: 5%; text-align: center">지 점</th>
					<th style="width: 5%; text-align: center">근무<br>시간</th>
					<th style="width: 5%; text-align: center">수정</th>
					<th style="width: 5%; text-align: center">삭제</th>
				</tr>
			</thead>
			<c:forEach items="${ list }" var="member">
				<tbody>
					<tr class="odd">
						<td style="text-align: center">${ member.id }</td>
						<td style="text-align: center">${ member.name }</td>
						<td style="text-align: center">${ member.position }</td>
						<td style="text-align: center">${ member.phone }</td>
						<td style="text-align: center">${ member.age }</td>
						<td style="text-align: center">${ member.address }${ member.address2 }</td>
						<td style="text-align: center">${ member.gender }</td>
						<td style="text-align: center">${ member.area }</td>
						<td style="text-align: center">${ member.optime }</td>
						<td style="text-align: center"><input class="button_center" width="30"
							type="image" src="/controller/resources/images/update.png"
							alt="button"
							onclick="document.location.href='${pageContext.request.contextPath}/pos/ps_user_updateForm?id=${member.id}'">
						</td>
						<td style="text-align: center">
							<form
								action="${pageContext.request.contextPath}/pos/ps_user_delete"
								method="POST" name="${member.id}">

								<input type="hidden" name="id" value="${member.id}"> <input
									class="button_center" width="30" type="image"
									src="/controller/resources/images/delete.png" alt="submit"
									onclick="button_event('${member.id}');return false;" />
							</form>
						</td>
					</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<br>
	<br>
</body>
</html>