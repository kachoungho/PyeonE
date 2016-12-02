<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,com.pyeon2.vo.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/listcss.css">
<title>Insert title here</title>

</head>
<body>

	<table class="ex1">
		<thead>
			<tr>
				<th scope="col">이름</th>
				<th scope="col">업무 시간</th>
				<th scope="col">급여</th>
				<th scope="col">지급</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="user">
			
				<tbody>
					<tr class="odd">
						<td class="date5">${user.userid }</td>
						<td class="date5">${user.hour }</td>
						<td class="date5"><fmt:formatNumber value="${user.money }" groupingUsed="true"/>원</td>
						<td><input type="button" value="지급" onclick="document.location.href='${pageContext.request.contextPath}/pos/ps_paygive?userid=${user.userid }&id=${id}'"></td>
					</tr>
				</tbody>
			
		</c:forEach>
	</table>

	
	<br><br><br>
</body>
</html>