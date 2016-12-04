<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
.table {
	width: 90%;
	border: 0;
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 20px;
	text-align: center;
}
.td {
	width: 100%;
}
.inpt {
	width: 200px;
	height: 50px;
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 20px;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		billnum.focus();
	}
</script>

<script type="text/javascript">
	function input(index) {
		if (index == 1) {
			document.daily.action = "pop_calcrefurndlist";
		}

		document.daily.submit();
	}
</script>
</head>
<body>
	<form method="post" name=daily id=daily>
	<input type="hidden" name="area" value="${area }">
		<table class="table">
			<tr>
				<td class="td" colspan="2">영수증의 바코드 입력</td>
			</tr>
			<tr>
				<td class="td"><input class="inpt" type="text" name="billnum" id="billnum"
			onkeypress="if(event.keyCode==13) {input(1);}"></td>
			<td class="td"><input class="submit" type="button" value="입력" onclick='input(1)'></td>
			</tr>
		</table>
	</form>
</body>
</html>