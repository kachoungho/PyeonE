<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
#div1 {
	width: 90%;
	height: 100%;
	margin: 80px auto 0;
	padding-left: 110px;
	padding-right: 80px;
	padding-top: 100px;
	padding-bottom: 200px;
	background-color: #ffffff;
	-moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
	-webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}
.w3-select {
	-moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	-webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	font-size: 14px;
	display: block;
	width: 200px;
	height: 50px;
	margin-bottom: 12px;
	padding: 16px 13px;
	color: #999999;
	border: 1px solid #d9d9d9;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	float: left;
}

.w3-input {
	-moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	-webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
	font-size: 14px;
	display: block;
	width: 600px;
	height: 50px;
	margin-bottom: 12px;
	padding: 16px 13px;
	color: #999999;
	border: 1px solid #d9d9d9;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
}

.submit-wrap {
	width: 20%;
	float: left;
}

.submit-wrap a {
	font-size: 12px;
	display: block;
	margin-top: 20px;
	text-align: center;
	text-decoration: none;
	color: #999999;
}

.submit-wrap a:hover {
	text-decoration: underline;
}

input.submit {
	float: left;
	font-size: 20px;
	line-height: 42px;
	display: block;
	width: 100%;
	height: 110px;
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

.section {
	position: relative;
	padding: 35px 0;
	display: block;
	height: 100%;
}

.container {
	width: 80%;
	height: 100%;
	display: block;
	margin-right: auto;
	margin-left: auto;
	padding-left: 15px;
	padding-right: 15px;
	overflow: auto;
}

.row {
	height: 100%;
	margin-left: -15px;
	margin-right: -15px;
}

.col-md-3 {
	position: relative;
	min-height: 1px;
	padding-left: 15px;
	padding-right: 15px;
	float: left;
	width: 25%;
}
</style>

<script LANGUAGE="JavaScript">
	function gradeList() {
		pick = document.pickForm;
		if (pick.city.value == 'sungnam') {
			pick.gu.length = 4;
			pick.gu.options[0].text = '구 선택';
			pick.gu.options[0].value = '2';
			pick.gu.options[1].text = '분당구';
			pick.gu.options[1].value = 'bundang';
			pick.gu.options[2].text = '중원구';
			pick.gu.options[2].value = 'jungwon';
			pick.gu.options[3].text = '수정구';
			pick.gu.options[3].value = 'sujeong';

		} else if (pick.city.value == 'seoul') {
			pick.gu.length = 4;
			pick.gu.options[0].text = '구 선택';
			pick.gu.options[0].value = '2';
			pick.gu.options[1].text = '강남구';
			pick.gu.options[1].value = 'gangnam';
			pick.gu.options[2].text = '강서구';
			pick.gu.options[2].value = 'gangseo';
			pick.gu.options[3].text = '용산구';
			pick.gu.options[3].value = 'yongsan';
		}
	}

	function gradeList2() {
		pick = document.pickForm;
		if (pick.gu.value == 'bundang') {
			pick.dong.length = 4;
			pick.dong.options[0].text = '동 선택';
			pick.dong.options[0].value = '3';
			pick.dong.options[1].text = '판교동';
			pick.dong.options[1].value = '판교';
			pick.dong.options[2].text = '정자동';
			pick.dong.options[2].value = '정자';
			pick.dong.options[3].text = '야탑동';
			pick.dong.options[3].value = '야탑';

		} else if (pick.gu.value == 'jungwon') {
			pick.dong.length = 4;
			pick.dong.options[0].text = '동 선택';
			pick.dong.options[0].value = '3';
			pick.dong.options[1].text = '은행동';
			pick.dong.options[1].value = '은행';
			pick.dong.options[2].text = '중앙동';
			pick.dong.options[2].value = '중앙';
			pick.dong.options[3].text = '성남동';
			pick.dong.options[3].value = '성남';

		} else if (pick.gu.value == 'sujeong') {
			pick.dong.length = 4;
			pick.dong.options[0].text = '동 선택';
			pick.dong.options[0].value = '3';
			pick.dong.options[1].text = '단대동';
			pick.dong.options[1].value = '단대';
			pick.dong.options[2].text = '수진동';
			pick.dong.options[2].value = '수진';
			pick.dong.options[3].text = '양지동';
			pick.dong.options[3].value = '양지';

		}

		else if (pick.gu.value == 'gangnam') {
			pick.dong.length = 4;
			pick.dong.options[0].text = '동 선택';
			pick.dong.options[0].value = '3';
			pick.dong.options[1].text = '역삼동';
			pick.dong.options[1].value = '역삼';
			pick.dong.options[2].text = '서초동';
			pick.dong.options[2].value = '서초';
			pick.dong.options[3].text = '삼성동';
			pick.dong.options[3].value = '삼성';

		} else if (pick.gu.value == 'gangseo') {
			pick.dong.length = 4;
			pick.dong.options[0].text = '동 선택';
			pick.dong.options[0].value = '3';
			pick.dong.options[1].text = '가양동';
			pick.dong.options[1].value = '가양';
			pick.dong.options[2].text = '화곡동';
			pick.dong.options[2].value = '화곡';
			pick.dong.options[3].text = '방화동';
			pick.dong.options[3].value = '방화';

		} else if (pick.gu.value == 'yongsan') {
			pick.dong.length = 4;
			pick.dong.options[0].text = '동 선택';
			pick.dong.options[0].value = '3';
			pick.dong.options[1].text = '이태원동';
			pick.dong.options[1].value = '이태원';
			pick.dong.options[2].text = '용문동';
			pick.dong.options[2].value = '용문';
			pick.dong.options[3].text = '용산동';
			pick.dong.options[3].value = '용산';

		}
	}
</script>
</head>
<body>
	<form name="pickForm" action="${pageContext.request.contextPath}/customer/cus_search" method="post">
		<div id="div1">
			<div style="float: left; width: 15%;">
				<label style="font-size: 30px; color: #263238;">지역 구분</label><br>
				<br> <label style="font-size: 30px; color: #263238;">물품
					검색</label>
			</div>
			<div style="float: left; width: 60%;">
				<select class="w3-select" style="width: 200px" name="city"
					onchange="gradeList()">
					<option value="1">시</option>
					<option value="sungnam">경기도 성남시</option>
					<option value="seoul">서울특별시</option>

				</select> <select class="w3-select" style="width: 200px" name="gu"
					onchange="gradeList2()">
					<option value="2">구</option>

				</select> <select class="w3-select" style="width: 200px" name="dong">
					<option value="null">동</option>
				</select> <br> <input class="w3-input " type="text" name="item_name"
					placeholder="상품명 입력">

			</div>
			<div class="submit-wrap">
				<input type="submit" value="검색" class="submit">
			</div>
		</div>
		<div class="section">
			<div class="container">
				<c:forEach items="${list}" var="list">
					<div class="row">
						<div class="col-md-3">
							<img src="/controller/resources/item_image/${list.item_image}"
								style="display: block; width: 200px; height: 200px;">
							<label style="font-size: 20px">${list.item_name}</label>
							<p>
								상품 가격 : <label><b>${list.price} 원</b></label><br>
								<c:if test="${list.price > 0}">
									재고 유무 : <label style="color: blue;"><b>재고 있음</b></label>
								</c:if>
								<c:if test="${list.price <= 0}">
									재고 유무 : <label style="color: blue;"><b>재고 없음</b></label> 
								</c:if>
								<br> 지 점 : <label><b><a
										href="cus_map?area=${list.area}&item_name=${list.item_name}">${list.area}점</a></b></label><br>
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<br> <br>
	</form>
</body>
</html>