<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
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


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<sec:authentication property="name" var="LoingUser" />
<title>공지사항 상세보기</title>

<script type="text/javascript">
	function input(index) {
		if (index == 1) {
			document.daily.action = "${pageContext.request.contextPath}/company/com_notice_modify";
		}
		if (index == 2) {
			document.daily.action = "${pageContext.request.contextPath}/company/com_notice_delete";
		}
		document.daily.submit();
	}
</script>
</head>


<body>
	<br>
	<br>
	<br>
	<form method="post" name=daily id=daily>
		<c:forEach items="${result }" var="list">
			<input type="hidden" value="${ list.noticenum}" name="noticenum">
			<table class="w3-table w3-hoverable w3-border" style="width: 40%; margin-left: auto;
	margin-right: auto;">
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">제목</th>
					<td style="text-align: center">${list.title }</td>
				</tr>
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">이름</th>
					<td style="text-align: center">${list.name }</td>
				</tr>
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">직급</th>
					<td style="text-align: center">${list.position }</td>
				</tr>
				<tr>
					<th class="w3-blue-grey" style="width: 20%; text-align: center">내용</th>
					<td style="text-align: center;height: 400px;"><pre><font face="Jeju Gothic">${list.contant }</font></pre></td>
				</tr>
			</table>
			<br>
			<input style="display: block; float: left; margin-right: 20px; margin-left: 780px;"
				width="40" type="image"
				src="/controller/resources/images/update.png" alt="button"
				onclick='input(1)' />
			<input style="display: block; float: left; margin-right: 20px;"
				width="40" type="image"
				src="/controller/resources/images/delete.png" alt="button"
				onclick='input(2)' />

		</c:forEach>
	</form>
			<input style="display: block; float: left; margin-right: 20px;"
				width="40" type="image" src="/controller/resources/images/list.png"
				alt="button"
				onclick="document.location.href='${pageContext.request.contextPath}/company/com_notice_list?page=${page }&titleSearch=${titleSearch}'" />
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

//댓글 리스트 가져오기
function getAllList(){
	var bno = ${num};
	//var id =${id};
	$.getJSON("com_notice_repl_list/" + bno, function(data){
		console.log(data.length);
		var str = "";
		
		$(data).each(function(){
			str += "<tr style='background: #f9f9f9; font-family: 'Jeju Gothic', sans-serif;'>"
			+ "<td style='width:5px; text-align: center;' data-rno='"+this.rno+"' class='replyLi'><input style='display: block; float: left;' width='15px' type='image' src='/controller/resources/images/delete.png' alt='button'/></td>"
			+ "<td style='width:200px; text-align: left;' class='admin'>";
			
			if(this.replyer != loginID){
				str += this.replyer;
			} else {
				str += "<img src='/controller/resources/images/admin.png' height='20px'>";
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
	
	var bno = ${num};
	var replyer = "${LoingUser}";
	var replyText = $("#newReplyText").val().replace(/\n/g, '<br>');

	console.log(bno);
	console.log(replyer);
	console.log(replyText);
	
	$.ajax({
		type : 'post',
		url : 'com_notice_repl_write',
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
				getAllList();
				$("#newReplyText").val('');
			}
		}
	});
});

//댓글 지우기
$("#replies").on("click", ".replyLi input", function() {

	var reply = $(this).parent();
	console.log(reply);
	var rno = reply.attr("data-rno");
	console.log(rno);

	$.ajax({
		type : 'post',
		url : 'com_notice_repl_delete',
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