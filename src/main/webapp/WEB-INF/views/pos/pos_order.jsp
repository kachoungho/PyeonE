<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, com.pyeon2.vo.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
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
         <div
            style="width: 98%; display: block; margin-left: auto; margin-right: auto;">
            <table class="w3-table w3-hoverable w3-border">
               <thead>
                  <tr class="w3-blue-grey">
                     <th style="width: 15%; text-align: center">상품<br>이미지
                     </th>
                     <th style="width: 15%; text-align: center; padding-top: 18px;">카테고리</th>
                     <th style="width: 7%; text-align: center; padding-top: 18px;">상품코드</th>
                     <th style="width: 27%; text-align: center; padding-top: 18px;">상품명</th>
                     <th style="width: 13%; text-align: center; padding-top: 18px;">원가</th>
                     <th style="width: 13%; text-align: center">소비자<br>가격
                     </th>
                     <th style="width: 10%; text-align: center; padding-top: 18px;">선
                        택</th>
                  </tr>
               </thead>

               <c:forEach items="${result}" var="list">
                  <tbody>
                     <tr>
                        <td style="padding-top: 10px; text-align: center"><img
                           width="30" height="50"
                           src="/controller/resources/item_image/${list.item_image }"></td>
                        <td style="padding-top: 20px; text-align: center">${list.category}</td>
                        <td style="padding-top: 20px; text-align: center">${list.item_code}</td>
                        <td style="padding-top: 20px; text-align: center">${list.item_name}</td>
                        <td style="padding-top: 20px; text-align: center"><fmt:formatNumber
                              value="${list.cost}" groupingUsed="true" />원</td>
                        <td style="padding-top: 20px; text-align: center"><fmt:formatNumber
                              value="${list.price}" groupingUsed="true" />원</td>
                        <td style="padding-top: 20px; text-align: center" data-code="${list.item_code}" data-name="${list.item_name}" data-cate="${list.category }" data-id="${name }">
                        <input
                           width="20" type="image" id="addItem" class="addItem"
                           src="/controller/resources/images/check.png" alt="button">
                           
                        </td>
                     </tr>
                  </tbody>
               </c:forEach>
            </table>
         </div>

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
         <div
            style="width: 70%; display: block; margin-left: auto; margin-right: auto;">
            <%-- <form action="${pageContext.request.contextPath}/pos/ps_order"
               method="post"> --%>

               <input type="hidden" name="state" value="승인 대기">
               <table class="w3-table w3-hoverable w3-border">
                  <tr>
                     <th class="w3-blue-grey" style="width: 2%; text-align: center">상품 코드</th>
                     <td colspan="2"><input id="input_order" type="text" class="orderTemp1"
                        name="item_code" value="${item_code}"></td>
                  </tr>
                  <tr>
                     <th class="w3-blue-grey" style="width: 20%; text-align: center">상품 이름</th>
                     <td colspan="2"><input id="input_order" type="text" class="orderTemp2"
                        name="item_name" value="${item_name}"></td>
                  </tr>
                  <tr>
                     <th class="w3-blue-grey" style="width: 20%; text-align: center">상품 갯수</th>
                     <td colspan="2"><input id="input_order" type="text" class="orderTemp5"
                        name="count"></td>
                  </tr>
                  <tr>
                     <th class="w3-blue-grey" style="width: 20%; text-align: center">카테고리</th>
                     <td colspan="2"><input id="input_order" type="text" class="orderTemp3"
                        name="category" value="${category}"></td>
                  </tr>
                  <tr>
                     <th class="w3-blue-grey" style="width: 20%; text-align: center">지 점</th>
                     <td><input id="input_order" type="text" name="area" class="orderTemp4"
                        value="${area}" readonly="readonly"></td>
                     <td><input class="com_stock_button" width="30" type="image"
                        src="/controller/resources/images/add.png" alt="submit"></td>
                  </tr>
               </table>
            <!-- </form> -->
         </div>
         <br> <br> <br>

         <div
            style="width: 95%; display: block; margin-left: auto; margin-right: auto;">
            <table class="w3-table w3-hoverable w3-border">
               <thead>
                  <tr class="w3-blue-grey">
                     <th style="width: 10%; text-align: center">상품<br>코드
                     </th>
                     <th style="width: 20%; text-align: center; padding-top: 15px;">상품이름
                     </th>
                     <th style="width: 10%; text-align: center; padding-top: 15px">수 량</th>
                     <th style="width: 10%; text-align: center">카테<br>고리</th>
                     <th style="width: 10%; text-align: center; padding-top: 15px;">지 점</th>
                     <th style="width: 20%; text-align: center; padding-top: 15px;">신청시간
                     </th>
                     <th style="width: 10%; text-align: center">신청<br>삭제
                     </th>
                  </tr>
               </thead>
               <%-- <c:forEach items="${list }" var="list"> --%>
                  <tbody id="orderList">
                     <%-- <tr>
                        <td style="padding-top: 20px; text-align: center">${list.item_code }</td>
                        <td style=" text-align: center">${list.item_name }</td>
                        <td style="padding-top: 20px; text-align: center">${list.count }</td>
                        <td style="padding-top: 20px; text-align: center">${list.category }</td>
                        <td style="padding-top: 20px; text-align: center">${list.area}</td>
                        <td style=" text-align: center">${list.p2_time }</td>
                        <td style="padding-top: 20px; text-align: center"><input width="20" type="image"
                           src="/controller/resources/images/delete.png" alt="button"
                           onclick="document.location.href='ps_order_temp_delete?item_code=${list.item_code}&area=${list.area}&page=${pageMaker.cri.page }'">
                        </td>
                     </tr> --%>
                  </tbody>
               <%-- </c:forEach> --%>
            </table>
            <form action="${pageContext.request.contextPath}/pos/ps_order_temp"
               method="post">
               <input style="float: right; margin-right: 2%;" width="30"
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