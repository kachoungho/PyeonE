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
<title>Insert title here</title>
</head>
<body>
	<section class="container">
		<article class="half">
			<h1>PMART</h1>
			<div class="tabs">
				<span class="tab signup active"><a href="#signup">회원가입</a></span>
			</div>
			<div class="content">
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
		</article>
	</section>
</body>
</html>