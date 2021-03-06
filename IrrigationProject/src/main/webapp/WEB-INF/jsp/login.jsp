 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page contentType="text/html; charset=UTF-8"%>
	<meta charset =UTF-8></meta>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="/css/loginPageCss.css">

</head>
<body style="background-image: url('/images/background.jpg');background-size: cover;">
	<div class="container">
		<div class="myheader text-center"><h2 style="color:white;"><spring:message code="label.header"/></h2></div>
		<div class="card card-container">
			<img id="profile-img" class="profile-img-card"
				src="/images/avatar_2x.png" />
			<p id="profile-name" class="profile-name-card"></p>
			<form action="/login" method="POST" class="form-signin">
				<span id="username1" class="username"></span> 
				<input type="text" id="username" name="username" class="form-control" placeholder="<spring:message code="label.userid"/>" required autofocus> 
				<input type="password" id="password" name="password" class="form-control" placeholder="<spring:message code="label.password"/>" required>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<!-- <div id="remember" class="checkbox">
					<label> 
						<input type="checkbox" value="remember-me"> Remember me
					</label>
				</div> -->
				<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit"><spring:message code="label.signin"/></button>
			</form>
			<!-- /form -->
			<!-- <a href="#" class="forgot-password"> Forgot the password? </a> -->
			<div align="right">
				<a href="/login?lang=EN" class="text-right"><spring:message code="label.languageenglish"/></a><br/>
				<a href="/login?lang=ma" class="text-right"><spring:message code="label.languagemarathi"/></a>
			</div>
		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->
</body>
</html>