<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/style.css">
<style type="text/css">
.div_cols {
	position: relative;
	min-height: 1px;
	padding-left: 15px;
	padding-right: 15px;
	float: left;
	width: 33%;
	font-family: 'Jeju Gothic', sans-serif;
}

.slt {
	text-align: right;
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 14px;
	display: block;
	width: 100%;
	height: 42px;
	color: black;
	border: 1px solid #d9d9d9;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

.inpts {
	text-align: right;
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 14px;
	display: block;
	width: 100%;
	height: 42px;
	padding: 16px 13px;
	color: black;
	border: 1px solid #d9d9d9;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

input.submit3 {
	font-size: 14px;
	line-height: 42px;
	display: block;
	width: 100%;
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

.div_col_l_r {
	position: relative;
	min-height: 1px;
	padding-left: 15px;
	padding-right: 15px;
	float: left;
	width: 25%;
	font-family: 'Jeju Gothic', sans-serif;
}

.div_col_c {
	position: relative;
	min-height: 1px;
	padding-left: 15px;
	padding-right: 15px;
	float: left;
	width: 50%;
	font-family: 'Jeju Gothic', sans-serif;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>신규 제품 추가</title>
</head>
<body>
	<sec:authentication property="name" var="LoingUser" />
	<form action="com_companyStock2" method="POST"
		enctype="multipart/form-data">
		<div class="div_container">
			<div class="div_row">
				<div class="div_col_l_r"></div>
				<div class="div_col_c">
					<table class="table" style="margin-top: 50px">
						<tr>
							<td colspan="2" class="h"
								style="font-size: 30px; padding-bottom: 20px;">신규 제품 추가</td>
						</tr>
						<tr>
							<th class="w3-blue-grey" style="width: 30%">상 품 명</th>
							<td class="td1" style="width: 70%"><input class="inpts"
								type="text" name="item_name" /></td>
						</tr>
						<tr>
							<th class="w3-blue-grey">상품 이미지</th>
							<td class="td1"><input class="submit3" type="file"
								name="file" readonly="readonly"></td>
						</tr>
						<tr>
							<th class="w3-blue-grey">원 가</th>
							<td class="td1"><input class="inpts" type="text" name="cost" /></td>
						</tr>
						<tr>
							<th class="w3-blue-grey">판 매 가</th>
							<td class="td1"><input class="inpts" type="text"
								name="price" /></td>
						</tr>
						<tr>
							<th class="w3-blue-grey">수량</th>
							<td class="td1"><input class="inpts" type="text"
								name="count" /></td>
						</tr>
						<tr>
							<th class="w3-blue-grey">카테고리</th>
							<td class="td1"><select class="slt" name="category">
									<option value="all">선택</option>
									<option value="음료">음료</option>
									<option value="스낵">스낵</option>
									<option value="인스턴트">인스턴트</option>
									<option value="주류">주류</option>
							</select></td>
						</tr>
					</table>
					<input type="hidden" name="id" value="${LoingUser}"> <input
						class="submit" style="float: right" type="submit" value="추가">

				</div>
				<div class="div_col_l_r"></div>
			</div>
		</div>

	</form>
</body>
</html>