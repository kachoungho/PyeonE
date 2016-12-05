<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/style.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

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

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
	function btn_event(btn) {
		var name = btn;
		var val = document.forms[name].elements['pay'].value;
		alert(val);
	}
</script>


<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'line' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {

		var data = new google.visualization.DataTable();
		var areaP = '판교';
		var areaJ = '정자';
		var areaY = '야탑';
		var year = '2016';
		var payP = new Array();
		var payJ = new Array();
		var payY = new Array();
		var year = new Array();
		var month = new Array();

		
		if("${area}" == areaP){
			data.addColumn('number', '월');
			data.addColumn('number', '판교');
			
			<c:forEach items="${list}" var="list">
			if("${list.area}" == areaP){
				payP.push("${list.pay}");
				month.push("${list.month}");
			}
			</c:forEach> 
			
			data.addRows([ [1,  payP[0]/10000], [2,  payP[1]/10000],
				       	   [3,  payP[2]/10000], [4,  payP[3]/10000],
				       	   [5,  payP[4]/10000], [6,  payP[5]/10000],
				       	   [7,  payP[6]/10000], [8,  payP[7]/10000],
				       	   [9,  payP[8]/10000], [10,  payP[9]/10000],
				       	   [11,  payP[10]/10000], [12,  payP[11]/10000], ]);     
		} else if("${area}" == areaJ){
			data.addColumn('number', '월');
			data.addColumn('number', '정자');
			
			<c:forEach items="${list}" var="list">
			if("${list.area}" == areaJ){
				payJ.push("${list.pay}");
				month.push("${list.month}");
			}
			</c:forEach> 
			
			data.addRows([ [1,  payJ[0]/10000], [2,  payJ[1]/10000],
				       	   [3,  payJ[2]/10000], [4,  payJ[3]/10000],
				       	   [5,  payJ[4]/10000], [6,  payJ[5]/10000],
				       	   [7,  payJ[6]/10000], [8,  payJ[7]/10000],
				       	   [9,  payJ[8]/10000], [10,  payJ[9]/10000],
				       	   [11,  payJ[10]/10000], [12,  payJ[11]/10000], ]);   
		} else if("${area}" == areaY){
			data.addColumn('number', '월');
			data.addColumn('number', '야탑');
			
			<c:forEach items="${list}" var="list">
			if("${list.area}" == areaY){
				payY.push("${list.pay}");
				month.push("${list.month}");
			}
			</c:forEach> 
			
			data.addRows([ [1,  payY[0]/10000], [2,  payY[1]/10000],
				       	   [3,  payY[2]/10000], [4,  payY[3]/10000],
				       	   [5,  payY[4]/10000], [6,  payY[5]/10000],
				       	   [7,  payY[6]/10000], [8,  payY[7]/10000],
				       	   [9,  payY[8]/10000], [10,  payY[9]/10000],
				       	   [11,  payY[10]/10000], [12,  payY[11]/10000], ]);   
		} else {
			data.addColumn('number', '월');
			data.addColumn('number', '판교');
			data.addColumn('number', '정자');
			data.addColumn('number', '야탑');
			<c:forEach items="${list}" var="list">
			if("${list.area}" == areaP){
				payP.push("${list.pay}");
				month.push("${list.month}");
			} else if("${list.area}" == areaJ){
				payJ.push("${list.pay}")
			} else if("${list.area}" == areaY){
				payY.push("${list.pay}")
			}
			</c:forEach> 
			
			data.addRows([ [1,  payP[0]/10000, payJ[0]/10000, payY[0]/10000], [2,  payP[1]/10000, payJ[1]/10000, payY[1]/10000],
			     		 [3,  payP[2]/10000, payJ[2]/10000, payY[2]/10000], [4,  payP[3]/10000, payJ[3]/10000, payY[3]/10000],
			     		 [5,  payP[4]/10000, payJ[4]/10000, payY[4]/10000], [6,  payP[5]/10000, payJ[5]/10000, payY[5]/10000],
			     		 [7,  payP[6]/10000, payJ[6]/10000, payY[6]/10000], [8,  payP[7]/10000, payJ[7]/10000, payY[7]/10000],
			     		 [9,  payP[8]/10000, payJ[8]/10000, payY[8]/10000], [10,  payP[9]/10000, payJ[9]/10000, payY[9]/10000],
			     		 [11,  payP[10]/10000, payJ[10]/10000, payY[10]/10000], [12,  payP[11]/10000, payJ[11]/10000, payY[11]/10000] ]);  
		}
		var options = {
			chart : {
				title : '지점별 수입 현황',
				subtitle : '(만원)'
			},
			width : 650,
			height : 350
		};

		var chart = new google.charts.Line(document
				.getElementById('linechart_material'));

		chart.draw(data, google.charts.Line.convertOptions(options));
	}
</script>

<title>Insert title here</title>
</head>
<body>
	<div style="float: left; width: 50%">
		<div class="div_row"
			style="margin-top: 30px; margin-right: 10%; margin-left: 10%; padding-left: 15px; padding-right: 15px;">
			<div class="div_col2">
				<form
					action="${pageContext.request.contextPath}/company/com_importSpendList"
					method="post">
					<br> <br> <select class="slt_insert3" name="area">
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
				<br> <br>

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
								<td class="td1"><fmt:formatNumber value="${list.pay }"
										groupingUsed="true" />원</td>
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
							<td class="td1"><fmt:formatNumber value="${pay1 }"
									groupingUsed="true" />원</td>
							<td class="td1">지출</td>
							<td class="td1"><fmt:formatNumber value="${pay2 }"
									groupingUsed="true" />원</td>
							<td class="td1"></td>
						</tr>
						<tr>
							<td class="td1">순이익</td>
							<td class="td1"></td>
							<td class="td1"></td>
							<td class="td1"><fmt:formatNumber value="${total }"
									groupingUsed="true" />원</td>
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
	<div style="float: left; width: 50%">
		<div style="margin-top: 25%">
			<div id="linechart_material"
				style="width: 650px; height: 350px; margin-left: auto; margin-right: auto;"
				align="center"></div>
		</div>
	</div>
</body>
</html>
