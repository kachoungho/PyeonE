<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, com.pyeon2.vo.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/listcss.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<sec:authentication property="name" var="LoingUser" />
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<sec:authentication property="name" var="name" />
	<div style="overflow: auto;">
		<div style="float: left; width: 50%;">
			<table class="ex1">
				<thead>
					<tr>
						<th scope="col">상품<br>이미지 </th>
						<th scope="col">카 테 고 리</th>
						<th scope="col">상 품 코 드</th>
						<th scope="col">상 품 명</th>
						<th scope="col">원 가</th>
						<th scope="col">소비자 가격</th>
						<!-- <th scope="col">재고<br>수량
						</th> -->
						<th scope="col">선 택</th>
					</tr>
				</thead>

				<c:forEach items="${result}" var="list">
					<tbody>
						<tr class="odd">
							<td class="date2"><img width="30" height="50"
								src="/controller/resources/item_image/${list.item_image }"></td>
							<td class="date2">${list.category}</td>
							<td class="date3">${list.item_code}</td>
							<td class="date9">${list.item_name}</td>
							<td class="date5">${list.cost}원</td>
							<td class="date9">${list.price}원</td>
							<%-- <td class="date6">${list.count}개</td> --%>
							<td class="date8" data-code="${list.item_code}" data-name="${list.item_name}" data-cate="${list.category }" data-id="${name }">
							<input width="40" type="image" id="addItem" class="addItem"
								src="/controller/resources/images/check.png" alt="button"
								>
							</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>

			<div>
				<ul class="com_stock_li-paging">
					<c:if test="${pageMaker.prev }">
						<li><a
							href="${pageContext.request.contextPath}/pos/ps_order?page=${pageMaker.startPage - 1 }">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx ? 'class=active' : '' }"/>>
							<a
							href="${pageContext.request.contextPath}/pos/ps_order?page=${idx}">${idx }</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
						<li><a
							href="${pageContext.request.contextPath}/pos/ps_order?page=${pageMaker.endPage + 1 }">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
			<br> <br> <br>
		</div>

		<div style="float: left; width: 50%;">
			<div>
				<%-- <form action="${pageContext.request.contextPath}/pos/ps_order"
					method="post"> --%>
					<table id="table_order">
						<input type="hidden" name="state" value="승인 대기">
						<tr>
							<td id="order_label">상품 코드</td>
							<td colspan="2"><input id="input_order" type="text" class="orderTemp1"
								name="item_code" value="${item_code}"></td>
						</tr>
						<tr>
							<td id="order_label">상품 이름</td>
							<td colspan="2"><input id="input_order" type="text" class="orderTemp2"
								name="item_name" value="${item_name}"></td>
						</tr>
						<tr>
							<td id="order_label">상품 갯수</td>
							<td colspan="2"><input id="input_order" type="text" class="orderTemp5"
								name="count"></td>
						</tr>
						<tr>
							<td id="order_label">카테고리</td>
							<td colspan="2"><input id="input_order" type="text" class="orderTemp3"
								name="category" value="${category}"></td>
						</tr>
						<tr>
							<td id="order_label">지 점</td>
							<td><input id="input_order" type="text" name="area" class="orderTemp4"
								value="${area}" readonly="readonly"></td>
							<td><input class="com_stock_button" width="40" type="image"
								src="/controller/resources/images/add.png" alt="submit"></td>
						</tr>
					</table>
				<!-- </form> -->
			</div>
			<br> <br> <br>

			<div>
				<table class="ex1">
					<thead>
						<tr>
							<th scope="col">상품<br>코드
							</th>
							<th scope="col">상품<br>이름
							</th>
							<th scope="col">수 량</th>
							<th scope="col">카테고리</th>
							<th scope="col">지 점</th>
							<th scope="col">신청<br>시간
							</th>
							<th scope="col">신청<br>삭제
							</th>
						</tr>
					</thead>
					<%-- <c:forEach items="${list }" var="list"> --%>
						<tbody id="orderList">
							<%-- <tr class="odd">
								<td class="date2">${list.item_code }</td>
								<td class="date2">${list.item_name }</td>
								<td class="date2">${list.count }</td>
								<td class="date2">${list.category }</td>
								<td class="date2">${list.area}</td>
								<td class="date9">${list.p2_time }</td>
								<td class="date2"><input width="40" type="image"
									src="/controller/resources/images/delete.png" alt="button"
									onclick="document.location.href='ps_order_temp_delete?item_code=${list.item_code}&area=${list.area}&page=${pageMaker.cri.page }'">
								</td>
							</tr> --%>
						</tbody>
					<%-- </c:forEach> --%>
				</table>
				<form action="${pageContext.request.contextPath}/pos/ps_order_temp"
					method="post">
					<input style="float: right; margin-right: 30px;" width="40"
						type="image" src="/controller/resources/images/check.png"
						alt="submit">
				</form>
			</div>
		</div>
	</div>
	
<script>
getSelectedList();

function getSelectedList(){
	$.getJSON("ps_order_selected_List", function(data){
		console.log(data.length);
		var str = "";
		$(data).each(function(){			
			str += "<tr class='odd'>";
			str += "<td class='date2'>" + this.item_code + "</td>";
			str += "<td class='date2'>" + this.item_name + "</td>";
			str += "<td class='date2'>" + this.count + "</td>";
			str += "<td class='date2'>" + this.category + "</td>";
			str += "<td class='date2'>" + this.area + "</td>";
			str += "<td class='date2'>" + this.p2_time + "</td>";
			str += "<td class='date2' id='deleteBtn' data-code='"+this.item_code+"' data-area='"+this.area+"'><input width='40' type='image' src='/controller/resources/images/delete.png' alt='button'><td>"
			str += "</tr>";	
		});
		
		$("#orderList").html(str);
	});	
}

function getAllList(){
	$.getJSON("ps_order_temp_list", function(data){
		console.log(data.length);

		var item_code;
		var item_name;
		var category;
		var area;
		
		$(data).each(function(){			
			$(".orderTemp1").val(this.item_code);
			$(".orderTemp2").val(this.item_name);
			$(".orderTemp3").val(this.category);
			$(".orderTemp4").val(this.area);
		});

	});	
}

$(".addItem").on("click", function() {
	var parent = $(this).parent();
	var item_code = parent.attr("data-code");
	var item_name = parent.attr("data-name");
	var category = parent.attr("data-cate");
	var name = parent.attr("data-id");

	console.log(item_code);
	console.log(item_name);
	console.log(category);
	console.log(name);
	
	$.ajax({
		type : 'post',
		url : 'ps_order_temp_write',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			item_code : item_code,
			item_name : item_name,
			category : category,
			name : name
		}),
		success : function(result) {
			console.log("result: " + result);
			if (result == 'SUCCESS') {
				//alert("발주 대기 입력.");
				getAllList();
			}
		}
	});
});	

$(".com_stock_button").on("click", function() {

	var item_code = $(".orderTemp1").val();
	var item_name = $(".orderTemp2").val();
	var category = $(".orderTemp3").val();
	var area = $(".orderTemp4").val();
	var count = $(".orderTemp5").val();
	var state = "승인 대기";

	console.log(item_code);
	console.log(item_name);
	console.log(category);
	console.log(name);
	
	$.ajax({
		type : 'post',
		url : 'ps_order_selected_write',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			item_code : item_code,
			item_name : item_name,
			category : category,
			area : area,
			state : state,
			count : count
		}),
		success : function(result) {
			console.log("result: " + result);
			if (result == 'SUCCESS') {
				//alert("삭제 되었습니다.");
				getSelectedList();
				$(".orderTemp1").val("");
				$(".orderTemp2").val("");
				$(".orderTemp3").val("");
				$(".orderTemp4").val("");
				$(".orderTemp5").val("");
			}
			if(result == 'FAIL'){
				alert("갯수를 입력하세요");
				getSelectedList();
			}
		}
	});
});	

$("#orderList").on("click", "#deleteBtn input", function() {
	var parent = $(this).parent();
	var item_code = parent.attr("data-code");
	var area = parent.attr("data-area");
	console.log(item_code);
	console.log(area);
	
	$.ajax({
		type : 'post',
		url : 'ps_order_selected_delete',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			item_code : item_code,
			area : area
		}),
		success : function(result) {
			console.log("result: " + result);
			var str = "";
			if (result == 'SUCCESS') {
				//alert("삭제 되었습니다.");
				getSelectedList();
			}
			
		}
	});
});


</script>
</body>
</html>