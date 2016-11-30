<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#div1 {
	background-color: skyblue;
	width: 1260px;
	height: 960px;
	padding: 30px;
	margin: 2.5%;
}

#div_s {
	width: 150px;
	height: 100px;
	background-color: white;
	float: left;
}

#div_alcoh {
	width: 150px;
	height: 100px;
	background-color: #D2FFD2;
	float: left;
	font-size: 13px;
}

#div_drink {
	width: 150px;
	height: 100px;
	background-color: #E1F6FA;
	float: left;
	font-size: 13px;
}

#div_snack {
	width: 150px;
	height: 100px;
	background-color: #F5D08A;
	float: left;
	font-size: 13px;
}

#div_instant {
	width: 150px;
	height: 100px;
	background-color: #FFB0CF;
	float: left;
	font-size: 13px;
}

#div_counter {
	width: 150px;
	height: 100px;
	background-color: #FF5050;
	float: left;
	font-size: 13px;
	text-align: center;
	padding-top: 40px;
}

#div_door {
	width: 150px;
	height: 100px;
	background-color: #FFF064;
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
	<div id="div1">
		<div id="div_alcoh">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 21)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		 
		
		<div id="div_alcoh">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 22)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		
		<div id="div_s"></div>
		<div id="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 6)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach></div>
		<div id="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 7)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach></div>
		<div id="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 8)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach></div>
		<div id="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 9)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		 
		
			<div id="div_alcoh">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 23)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
		<div id="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 10)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach></div>
		<div id="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 11)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach></div>
		<div id="div_snack">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 12)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach></div>

		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		 
		
		<div id="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 1)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_counter">카운터</div>
		 
		
			<div id="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 2)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
			<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 13)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
			<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 14)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
			<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 15)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
					<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 16)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
		<div id="div_counter">카운터</div>
		 
		
			<div id="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 3)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
					<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 17)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
					<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 18)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
					<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 19)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
					<div id="div_instant">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 15)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		 
		
			<div id="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 4)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		 
		
			<div id="div_drink">
			<c:forEach items="${list}" var="list">
				<c:if test="${(list.sectors == 5)}">
					* ${list.item_name}<br>
				</c:if>
			</c:forEach>
		</div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		 
		
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_s"></div>
		<div id="div_door">출입문</div>
		<div id="div_door">출입문</div>
		 
	</div>
</body>
</html>