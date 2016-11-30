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
				<span class="tab signin active"><a href="#signin">로그인</a></span> <span
					class="tab signup"><a href="#signup">회원가입</a></span>
			</div>
			<div class="content">
				<div class="signin-cont cont">
					<c:url value="/j_spring_security_check" var="loginURL"></c:url>
					<form action="${loginURL}" method="post">
						<label for="userid">아이디</label> <input type="text" name="j_username"
							id="userid" class="inpt" required="required" placeholder="아이디 입력">


						<label for="password">비밀번호</label> <input type="password"
							name="j_password" id="password" class="inpt" required="required"
							placeholder="비밀번호 입력">

						<div class="submit-wrap">
							<input type="submit" value="로그인" class="submit">
							<a href="cus_idPwd" class="more">아이디 / 비밀번호 찾기</a>
						</div>
					</form>
				</div>


				<div class="signup-cont cont">
					<form action="cus_join" method="post">
						<label for="userid">아이디</label> <input type="text" name="userid"
							id="userid" class="inpt" required="required" placeholder="아이디 입력">

						<label for="password">비밀번호</label> <input type="password"
							name="userpwd" id="userpwd" class="inpt" required="required"
							placeholder="비밀번호 입력"> <label for="username">이름</label> <input
							type="text" name="username" id="username" class="inpt"
							required="required" placeholder="이름 입력"> <label
							for="userphone">휴대전화</label> <input type="text" name="userphone"
							id="userphone" class="inpt" required="required"
							placeholder="휴대전화 입력"> <label for="useremail">이메일</label>
						<input type="text" name="useremail" id="useremail" class="inpt"
							required="required" placeholder="이메일 입력">

						<div class="submit-wrap">
							<input type="submit" value="회원가입" class="submit">
						</div>
					</form>
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