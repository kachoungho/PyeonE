<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
input.submit {
	font-size: 15px;
	display: block;
	width: 50px;
	cursor: pointer;
	vertical-align: middle;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #263238;
	border: 1px solid #263238;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	font-family: 'Jeju Gothic', sans-serif;
}

input.submit:hover {
	background-color: #263238;
	color: #ffffff;
	-moz-transition: all 0.2s;
	-o-transition: all 0.2s;
	-webkit-transition: all 0.2s;
	transition: all 0.2s;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정표</title>
<script type="text/javascript">
	function button_event(btn) {
		var name = btn;
		var val = document.forms[name].elements['content'].value;

		if (val != null) {
			if (confirm("일정을 정말로 삭제하시겠습니까?") == true) {
				document.forms[name].submit();
			} else {
				return false;
			}
		}
	}
</script>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/company/com_calendarMemoInsert">
		<table style="margin: auto">
			<tr>
				<td colspan="2" align="center"><font face="Jeju Gothic"
					size="3"><b>${year}년 ${month + 1}월 ${day }일 일정표</b></font></td>
			</tr>
			<tr>
				<td colspan="2"><textarea rows="15" cols="25" name="memo">${ content }</textarea>
				</td>
			</tr>
			<tr>
				<td align="right" align="center">
					<input class="submit" type="submit" value="입력"> 
					<input type="hidden" value=${year } name="year">
					<input type="hidden" value=${month } name="month"> 
					<input type="hidden" value=${day } name="day"></td>
				</form>

				<td>
					<form
						action="${pageContext.request.contextPath}/company/com_calendarMemoDelete"
						method="POST" name="content">
						<input type="hidden" id="content" value="${content}"> 
						<input class="submit" type="button" value="삭제" alt="submit"
							onclick="button_event('content');return false;"> <input
							type="hidden" value=${year } name="year"> <input
							type="hidden" value=${month } name="month"> <input
							type="hidden" value=${day } name="day">
					</form>
				</td>
			</tr>

		</table>
</body>
</html>