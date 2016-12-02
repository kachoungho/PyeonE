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

<style type="text/css">

.h{
	font-size: 20px;
	font-family: 'Jeju Gothic', sans-serif;
}
input.submit {
	font-size: 12px;
	line-height: 42px;
	width: 100px;
	height: 40px;
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
.inpt {
	font-family: 'Jeju Gothic', sans-serif;
	font-size: 14px;
	display: block;
	width: 100%;
	height: 100%;
	padding: 16px 13px;
	color: black;
	border: 1px solid #d9d9d9;
	background: transparent;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	resize: none;
}
</style>

<script type="text/javascript">
	function input(index) {
		if (index == 1) {
			document.daily.action = "${pageContext.request.contextPath}/customer/req_board/modify";
		}
		if (index == 2) {
			document.daily.action = "${pageContext.request.contextPath}/company/req_board_delete";
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

	function button_event2(btn) {
		var name = btn;

		if (confirm("게시글을 정말로 삭제하시겠습니까?") == true) {
			document.forms[name].action = "${pageContext.request.contextPath}/company/req_board_delete";
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
	<div
		style="width: 40%; display: block; margin-left: auto; margin-right: auto;">
		<form method="post" name=daily id=daily>
			<label
				style="font-size: 20px; font-family: 'Jeju Gothic', sans-serif;">
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
						</tr>
						<!-- <font face="Jeju Gothic"></font> -->
					</thead>
				</table>
				<br>
				<c:if test="${result == 1 }">
					<sec:authorize access="hasAuthority('ROLE_CUS')">
						<input
							style="display: block; float: left; margin-right: 20px; margin-left: 380px;"
							width="40" type="image" src="/controller/images/update.png"
							alt="button" onclick='input(1)' />

						<input style="display: block; float: left; margin-right: 20px;"
							width="40" type="image" src="/controller/images/delete.png"
							alt="submit" onclick="button_event('daily');return false;">
					</sec:authorize>
					<sec:authorize access="hasAuthority('ROLE_ADMIN')">

						<input style="display: block; float: left; margin-left: 440px; margin-right: 20px;"
							width="40" type="image" src="/controller/images/delete.png"
							alt="submit" onclick="button_event2('daily');return false;">
					</sec:authorize>
				</c:if>
			</c:forEach>
		</form>
	</div>

	<sec:authorize access="hasAuthority('ROLE_CUS')">
		<c:if test="${result == 1 }">
			<input style="display: block; float: left; margin-right: 20px;"
				width="40" type="image" src="/controller/images/list.png"
				alt="button"
				onclick="document.location.href='${pageContext.request.contextPath}/customer/req_board/list'" />
		</c:if>
		<c:if test="${result == 2 }">
			<input
				style="display: block; float: left; margin-right: 20px; margin-left: 900px"
				width="40" type="image" src="/controller/images/list.png"
				alt="button"
				onclick="document.location.href='${pageContext.request.contextPath}/customer/req_board/list'" />
		</c:if>
	</sec:authorize>
	
	<sec:authorize access="hasAuthority('ROLE_ADMIN')">
			<input style="display: block; float: left; margin-right: 20px;"
				width="40" type="image" src="/controller/images/list.png"
				alt="button"
				onclick="document.location.href='${pageContext.request.contextPath}/company/req_board_list'" />
	</sec:authorize>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="width:100%; overflow: hidden;">
		<div style=" float:left; width: 34%">　</div>
		<div style=" float:left;width: 32%">
			<font class="h">댓글 입력</font>
			<div>
				<textarea class="inpt" rows="4" cols="45" name="replytext" id="newReplyText"></textarea>
			</div>
			<br>
			<div style="float: right;">
				<input class="submit" type="button" id="replyAddBtn" value="입력"/>
			</div>
		</div>
		<div style=" float:left; width: 34%;">　</div>
	</div>
	<br>
	<div style="width:100%">
		<div align="center" >
			<table id="replies" style="">
			
			</table>
		</div>
	</div>
	<br>
	
<script>
getAllList();
var loginID = "${LoingUser}"; //로그인 아이디
var admin = "admin";


//댓글 리스트 가져오기
function getAllList(){
	var bno = ${req_num};
	var url = "";
	var select = "${select}";
	//var id =${id};
	console.log(select);
	if(select == "customer"){
		url = "cus_item_req_board_repl_list/";
	}
	else if(select == "company"){
		url = "com_item_req_board_repl_list/";
	}
	$.getJSON(url + bno, function(data){
		console.log(data.length);
		var str = "";
		
		$(data).each(function(){
			str += "<tr style='background: #f9f9f9; font-family: 'Jeju Gothic', sans-serif;'>";
			if(this.replyer == loginID) {
				str += "<td style='width:5px; text-align: center;' data-rno='"+this.rno+"' class='replyLi'><input style='display: block; float: left;' width='15px' type='image' src='/controller/resources/images/delete.png' alt='button'/></td>";
			} else if(this.replyer != admin) {
				str += "<td style='width:5px; text-align: center;' data-rno='"+this.rno+"' class='replyLi'><input style='display: block; float: left;' width='15px' type='image' src='/controller/resources/images/delete.png' alt='button'/></td>";
			} else {
				str += "<td> </td>";
			}
			
			str += "<td style='width:200px; text-align: left;' class='admin'>";
			 
			if(this.replyer == admin){
				str += "<img src='/controller/resources/images/admin.png' height='20px'>";
			}
			else{
				str += this.replyer;
			} 
			str += "</td><td style='width:200px; text-align: center;'>" + this.regdate_char + "</td></tr>"

				+ "<tr style='background: #f9f9f9;'><td style='width:400px;' colspan='3'>" + this.replyText + "</td>";

				str += "</tr><tr><td>　</td></tr>";
		});
		
		$("#replies").html(str);
	});	
}

//댓글 쓰기
$("#replyAddBtn").on("click", function() {
	var select = "${select}";
	console.log(select);
	var bno = ${req_num};
	var replyer = "${LoingUser}";
	var replyText = $("#newReplyText").val().replace(/\n/g, '<br>');
	
	var url1 = "";
	if(select == "customer"){
		url1 = "cus_item_req_board_repl_write";
	}
	else if(select == "company"){
		url1 = "com_item_req_board_repl_write";
	}

	console.log(bno);
	console.log(replyer);
	console.log(replyText);
	
	$.ajax({
		type : 'post',
		url : url1,
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
$("#replies").on("click", ".replyLi input", function() {
	var select = "${select}";
	console.log(select);
	var reply = $(this).parent();
	console.log(reply);
	var rno = reply.attr("data-rno");
	console.log(rno);
	
	var url1 = "";
	if(select == "customer"){
		url1 = "cus_item_req_board_repl_delete";
	}
	else if(select == "company"){
		url1 = "com_item_req_board_repl_delete";
	}

	$.ajax({
		type : 'post',
		url : url1,
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