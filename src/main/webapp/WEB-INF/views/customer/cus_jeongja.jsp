<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.div1 {
	background-color: #EFEFEF;
	width: 1320px;
	height: 940px;
	padding: 20px;
	margin: auto;
	overflow: auto;
}

.div_s {
	width: 160px;
	height: 100px;
	background-color: white;
	float: left;
}

.div_alcoh {
	width: 160px;
	height: 100px;
	background-color: #D2FFD2;
	float: left;
	font-size: 12px;
}

.div_drink {
	width: 160px;
	height: 100px;
	background-color: #FFE3EE;
	float: left;
	font-size: 12px;
}

.div_snack {
	width: 160px;
	height: 100px;
	background-color: #F5D08A;
	float: left;
	font-size: 12px;
}

.div_instant {
	width: 160px;
	height: 100px;
	background-color: #FF9DFF;
	float: left;
	font-size: 12px;
}

.div_counter {
	width: 160px;
	height: 100px;
	background-color: #dcdcdc;
	float: left;
	font-size: 13px;
	text-align: center;
	padding-top: 40px;
}

.div_door {
	width: 160px;
	height: 100px;
	background-color: #b9FFFF;
	float: left;
	font-size: 13px;
	text-align: center;
	padding-top: 40px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center"><b>정자점</b></h1>
	<div class="div1">
		<!-- 1행 -->
		<div class="div_alcoh">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'ALCOHOL' }">
					<c:if test="${(list.code2 >= 101 && list.code2 <= 104)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>


		<!-- 2행 -->
		<div class="div_alcoh">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'ALCOHOL' }">
					<c:if test="${(list.code2 >= 105 && list.code2 <= 108)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 101 && list.code2 <= 102)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 103 && list.code2 <= 104)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 105 && list.code2 <= 106)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 107 && list.code2 <= 108)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_s"></div>


		<!-- 3행 -->
		<div class="div_alcoh">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'ALCOHOL' }">
					<c:if test="${(list.code2 >= 109 && list.code2 <= 112)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 109 && list.code2 <= 110)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 111 && list.code2 <= 112)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 113 && list.code2 <= 114)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'SNACK' }">
					<c:if test="${(list.code2 >= 115 && list.code2 <= 116)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_s"></div>


		<!-- 4행 -->
		<div class="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'DRINK' }">
					<c:if test="${(list.code2 >= 101 && list.code2 <= 103)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_counter">카운터</div>


		<!-- 5행 -->
		<div class="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'DRINK' }">
					<c:if test="${(list.code2 >= 104 && list.code2 <= 105)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 101 && list.code2 <= 103)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 104 && list.code2 <= 106)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 107 && list.code2 <= 109)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 110 && list.code2 <= 112)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_counter">카운터</div>


		<!-- 6행 -->
		<div class="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'DRINK' }">
					<c:if test="${(list.code2 >= 107 && list.code2 <= 109)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 113 && list.code2 <= 115)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 116 && list.code2 <= 118)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 119 && list.code2 <= 121)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'INSTANT' }">
					<c:if test="${(list.code2 >= 122 && list.code2 <= 124)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_s"></div>


		<!-- 7행 -->
		<div class="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'DRINK' }">
					<c:if test="${(list.code2 >= 110 && list.code2 <= 112)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>


		<!-- 8행 -->
		<div class="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${list.code1 == 'DRINK' }">
					<c:if test="${(list.code2 >= 113 && list.code2 <= 115)}">
						<c:if test="${list.item_name == name }">
							<font color="red" size="4px"> * ${list.item_name} </font>
							<br>
						</c:if>
						<c:if test="${list.item_name != name }">
							<font color="black"> * ${list.item_name} </font>
							<br>
						</c:if>
					</c:if>
				</c:if>
			</c:forEach>
		</div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>


		<!-- 9행 -->
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_s"></div>
		<div class="div_door">출입문</div>
		<div class="div_door">출입문</div>

	</div>
</body>
</html>