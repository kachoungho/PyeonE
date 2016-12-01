<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<sec:authentication property="name" var="LoingUser" />
<title>Insert title here</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<script type="text/javascript">
	function input(index) {
		if (index == 1) {
			document.daily.action = "${pageContext.request.contextPath}/customer/req_board/modify";
		}
		if (index == 2) {
			document.daily.action = "${pageContext.request.contextPath}/customer/req_board/delete";
		}
		document.daily.submit();
	}

	function button_event(btn) {
		var name = btn;

		if (confirm("게시글을 정말로 삭제하시겠습니까?") == true) {
			document.forms[name].action = "${pageContext.request.contextPath}/customer/req_board/delete";
			document.forms[name].submit();
		} else {
			return false;
		}
	}
</script>
</head>

<body>
	<br>
	<br>
	<br>
	<div style="width: 40%; display: block; margin-left: auto; margin-right: auto;">
		<form method="post" name=daily id=daily>
			<label style="font-size: 20px; font-family: 'Jeju Gothic', sans-serif;">
			재고 요청 게시판</label> <br>
			<c:forEach items="${list}" var="list">
				<input type="hidden" value="${list.req_num}" name="req_num">
				<table class="w3-table-all w3-hoverable w3-border">
					<thead>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">제목</th>
							<td style="text-align: center; width: 70%">${list.title}</td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">상품명</th>
							<td style="text-align: center; width: 70%">${list.item_name}</td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">작성자</th>
							<td style="text-align: center; width: 70%">${list.name}</td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">지점</th>
							<td style="text-align: center; width: 70%">${list.position}</td>
						</tr>
						<tr>
							<th style="text-align: center; width: 30%" class="w3-blue-grey">내용</th>
							<td style="text-align: center; width: 70%; height: 400px;"><pre">${list.contant }</pre></td>
						</tr><!-- <font face="Jeju Gothic"></font> -->
					</thead>
				</table>
				<br>
				<c:if test="${result == 1 }">
					<input
						style="display: block; float: left; margin-right: 20px; margin-left: 380px;"
						width="40" type="image" src="/controller/images/update.png"
						alt="button" onclick='input(1)' />

					<input style="display: block; float: left; margin-right: 20px;"
						width="40" type="image" src="/controller/images/delete.png"
						alt="submit" onclick="button_event('daily');return false;">


				</c:if>
			</c:forEach>
		</form>
	</div>


	<c:if test="${result == 1 }">
		<input style="display: block; float: left; margin-right: 20px;"
			width="40" type="image" src="/controller/images/list.png"
			alt="button"
			onclick="document.location.href='${pageContext.request.contextPath}/customer/req_board_list'" />
	</c:if>
	<c:if test="${result == 2 }">
		<input
			style="display: block; float: left; margin-right: 20px; margin-left: 900px"
			width="40" type="image" src="/controller/images/list.png"
			alt="button"
			onclick="document.location.href='${pageContext.request.contextPath}/customer/req_board_list'" />
	</c:if>
	<br>
	<br>
	<br>
	
		<div align="center">
		<table id="replies" style="">
		
		</table>
	</div>
	
	<br>
	
	<div align="center">
		<div>
			<textarea rows="4" cols="40" name="replytext" id="newReplyText">
			
			</textarea>
			<!-- <input type="text" name="replytext" id="newReplyText"> -->
		</div>
		<button type="button" id="replyAddBtn" >ADD REPLY</button>
	</div>
	
<script>
getAllList();
var loginID = "${LoingUser}"; //로그인 아이디

//댓글 리스트 가져오기
function getAllList(){
	var bno = ${req_num};
	//var id =${id};
	$.getJSON("cus_item_req_board_repl_list/" + bno, function(data){
		console.log(data.length);
		var str = "";
		
		$(data).each(function(){
			str += "<tr>"
			+ "<td>" + this.replyer + "</td>"
			+ "<td>" + this.replyText + "</td>"
			+ "<td>" + this.regdate_char + "</td>";
			if(this.replyer != loginID){
				
			}
			else{
				str += "<td data-rno='"+this.rno+"' class='replyLi'><button>delete</button><td></tr>";
			}
		});
		
		$("#replies").html(str);
	});	
}

//댓글 쓰기
$("#replyAddBtn").on("click", function() {
	
	var bno = ${req_num};
	var replyer = "${LoingUser}";
	var replyText = $("#newReplyText").val();

	console.log(bno);
	console.log(replyer);
	console.log(replyText);
	
	$.ajax({
		type : 'post',
		url : 'cus_item_req_board_repl_write',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			bno : bno,
			replyer : replyer,
			replyText : replyText
		}),
		success : function(result) {

			if (result == 'SUCCESS') {

				//alert("등록 되었습니다.");
				getAllList();
				$("#newReplyText").val('');
			}
		}
	});
});

//댓글 지우기
$("#replies").on("click", ".replyLi button", function() {

	var reply = $(this).parent();
	console.log(reply);
	var rno = reply.attr("data-rno");
	console.log(rno);

	$.ajax({
		type : 'post',
		url : 'cus_item_req_board_repl_delete',
		headers : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "POST"
		},
		dataType : 'text',
		data : JSON.stringify({
			rno : rno
		}),
		success : function(result) {
			console.log("result: " + result);
			if (result == 'SUCCESS') {
				alert("삭제 되었습니다.");
				getAllList();
			}
		}
	});
});	

</script>
</body>
</html>