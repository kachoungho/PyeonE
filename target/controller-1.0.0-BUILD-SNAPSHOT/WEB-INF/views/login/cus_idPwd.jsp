<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<link rel="stylesheet" type="text/css"
	href="/controller/resources/css/login.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<section class="container">
		<article class="half">
			<h1>PMART</h1>
			<div class="tabs">
				<span class="tab signin active"><a href="#signin">아이디 찾기</a></span>
				<span class="tab signup"><a href="#signup">비밀번호 찾기</a></span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<form action="cus_id" method="post">
						<label for="username">이름</label> <input type="text"
							name="username" id="username" class="inpt" required="required"
							placeholder="이름 입력"> <label for="useremail">이메일</label> <input
							type="text" name="useremail" id="useremail" class="inpt"
							required="required" placeholder="이메일 입력">

						<div class="submit-wrap">
							<input type="submit" value="아이디 찾기" class="submit">
						</div>
						<br> <br> <br> <br>
						<br> <br> <br>
						<br> <br> <span class="tab signin active"><a href="${pageContext.request.contextPath}/">메인으로</a></span>
					</form>
				</div>


				<div class="signup-cont cont">
					<form action="cus_pwd" method="post">
						<label for="username">이름</label> <input type="text"
							name="username" id="username" class="inpt" required="required"
							placeholder="이름 입력"> <label for="useremail">이메일</label> <input
							type="text" name="useremail" id="useremail" class="inpt"
							required="required" placeholder="이메일 입력">

						<div class="submit-wrap">
							<input type="submit" value="비밀번호 찾기" class="submit">
						</div>
						<br> <br> <br> <br>
						<br> <br> <br>
						<br> <br> <span class="tab signin active"><a href="${pageContext.request.contextPath}/">메인으로</a></span>
					</form>
				</div>


				<div>
					<c:if test="${id != null}">
						<c:forEach items="${id }" var="id">
							<hr>
							아이디 : ${id.userid}<br>
						</c:forEach>
					</c:if>

					<c:if test="${pwd != null}">
						<c:forEach items="${pwd }" var="pwd">
							<hr>
							비밀번호  : ${pwd.userpwd}<br>
						</c:forEach>
					</c:if>
				</div>


			</div>
		</article>
	</section>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$('.tabs .tab').click(function() {
			if ($(this).hasClass('signin')) {
				$('.tabs .tab').removeClass('active');
				$(this).addClass('active');
				$('.cont').hide();
				$('.signin-cont').show();
			}
			if ($(this).hasClass('signup')) {
				$('.tabs .tab').removeClass('active');
				$(this).addClass('active');
				$('.cont').hide();
				$('.signup-cont').show();
			}
		});
		$('.container .bg').mousemove(
				function(e) {
					var amountMovedX = (e.pageX * -1 / 30);
					var amountMovedY = (e.pageY * -1 / 9);
					$(this).css('background-position',
							amountMovedX + 'px ' + amountMovedY + 'px');
				});
	</script>
</body>
</html>