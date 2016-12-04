<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.th {
	border-bottom: 1px solid #000000;
	border-right: 1px solid #000000;
	background-color: #607D8B;
	color: white;
	text-align: center;
	font-family: 'Jeju Gothic', sans-serif;
	height: 50px;
}
</style>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/style.css">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!--     <script type="text/javascript">
		$(function() {
			var result = new Array();
			
			<c:forEach items="${ list }" var="list">
				var json = new Object();
				json.area = "${ list.area }";
				json.pay = "${ list.pay }";
				json.month = "${ list.month}";
				result.push(json);
			</c:forEach>
			
			alert("jsoninfo=" + JSON.stringify(result));
		});
    </script> -->
    
    <script type="text/javascript">
   	function btn_event(btn) {
	  	var name = btn;
	  	var val = document.forms[name].elements['pay'].value;
	    alert(val);
   	}
    </script>
    

    <script type="text/javascript">
    
    google.charts.load('current', {'packages':['line']});
    google.charts.setOnLoadCallback(drawChart);
	
  function drawChart() {
	    
    var data = new google.visualization.DataTable();
    
    data.addColumn('number', 'Day');
    data.addColumn('number', '야탑');
    data.addColumn('number', '정자');
    data.addColumn('number', '판교');
    
/*     data.addRows([
        [1,  'obj3[0].value', 'obj3[1].value', 'obj3[2].value]',
        [2,  'obj3[3].value', 'obj3[4].value', 'obj3[5].value'],
        [3,  'obj3[6].value', 'obj3[7].value', 'obj3[8].value'],
        [4,  'obj3[9].value', 'obj3[10].value', 'obj3[11].value'],
        [5,  'obj3[12].value', 'obj3[13].value', 'obj3[14].value']
    ]); */
    
      data.addRows([
        [1,  30.9, 69.5, 32.4],
        [2,  30.9, 69.5, 32.4],
        [3,  25.4,   57, 25.7],
        [4,  11.7, 18.8, 10.5],
        [5,  11.9, 17.6, 10.4],
        [6,   8.8, 13.6,  7.7],
        [7,   7.6, 12.3,  9.6],
        [8,  12.3, 29.2, 10.6],
        [9,  16.9, 42.9, 14.8],
        [10, 12.8, 30.9, 11.6],
        [11,  5.3,  7.9,  4.7],
        [12,  6.6,  8.4,  5.2],
        [13,  4.8,  6.3,  3.6],
        [14,  4.2,  6.2,  3.4]
    ]);
 
    var options = {
      chart: {
        title: '지점별 수입 현황',
        subtitle: '(WON)'
      },
      width: 900,
      height: 500
    };

    var chart = new google.charts.Line(document.getElementById('linechart_material'));

    chart.draw(data, google.charts.Line.convertOptions(options));
  }
</script>

<title>Insert title here</title>
</head>
<body>
	<div class="div_container2">
		<div class="div_row" style="margin-top: 30px;">
			<div class="div_col2">
				<form
					action="${pageContext.request.contextPath}/company/com_importSpendList"
					method="post">
					<br>
					<br> <select class="slt_insert3" name="area">
						<option value="">지역 선택</option>
						<option value="판교">판교</option>
						<option value="야탑">야탑</option>
						<option value="정자">정자</option>
					</select> <select class="slt_insert3" name="year">
						<option value="">년도</option>
						<option value="2016">2016</option>
						<option value="2015">2015</option>
						<option value="2014">2014</option>
						<option value="2013">2013</option>
						<option value="2016">2012</option>
						<option value="2015">2011</option>
						<option value="2014">2010</option>
						<option value="2013">2009</option>
					</select> <select class="slt_insert3" name="month">
						<option value="">월</option>
						<option value="12">12</option>
						<option value="11">11</option>
						<option value="10">10</option>
						<option value="9">9</option>
						<option value="8">8</option>
						<option value="7">7</option>
						<option value="6">6</option>
						<option value="5">5</option>
						<option value="4">4</option>
						<option value="3">3</option>
						<option value="2">2</option>
						<option value="1">1</option>
					</select> <input class="submit" type="submit" value="검색">
				</form>
				<br>
				<br>

				<c:if test="${year != '' && month != '' }">
					<h4>지역 : ${area } / ${year }년 / ${month }월</h4>
				</c:if>

				<c:if test="${result == null }">
					<h2>내용이 없습니다.</h2>
				</c:if>
				<c:if test="${result != null }">
					<table class="table">
						<tr>
							<th class="th">지역</th>
							<th class="th">제목</th>
							<th class="th">수입 / 지출</th>
							<th class="th">금액</th>
							<th class="th">날짜</th>
						</tr>
						<c:forEach items="${ result}" var="list">
							<tr>
								<td class="td1">${list.area }</td>
								<td class="td1">${list.title }</td>
								<td class="td1">${list.content }</td>
								<td class="td1"><fmt:formatNumber value="${list.pay }" groupingUsed="true"/>원</td>
								<td class="td1"><fmt:formatDate value="${list.dayda }"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>

						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td colspan="4"></td>
						</tr>

						<tr>
							<td class="td1">수입</td>
							<td class="td1"><fmt:formatNumber value="${pay1 }" groupingUsed="true"/>원</td>
							<td class="td1">지출</td>
							<td class="td1"><fmt:formatNumber value="${pay2 }" groupingUsed="true"/>원</td>
							<td class="td1"></td>
						</tr>
						<tr>
							<td class="td1">순이익</td>
							<td class="td1"></td>
							<td class="td1"></td>
							<td class="td1"><fmt:formatNumber value="${total }" groupingUsed="true"/>원</td>
							<td class="td1"></td>
						</tr>
					</table>
				</c:if>

				<div>
					<ul class="com_stock_li-paging">
						<c:if test="${pageMaker.prev }">
							<li><a
								href="com_importSpendList?page=${pageMaker.startPage - 1 }&year=${year}&month=${month}&area=${area}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
								<a
								href="com_importSpendList?page=${idx}&year=${year}&month=${month}&area=${area}">${idx }</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
							<li><a
								href="com_importSpendList?page=${pageMaker.endPage + 1 }&year=${year}&month=${month}&area=${area}">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<form name="${ list.pay }">
		<c:forEach items="${ list }" var="list" varStatus="idx">
			<input type="hidden" value="${ list.pay }" name="pay">
			<input onclick="btn_event('${ list.pay }');return false;">
		</c:forEach>
	</form>
	
	<div id="linechart_material" style="width: 900px; height: 500px;" align="center">

	</div>
</body>
</html>