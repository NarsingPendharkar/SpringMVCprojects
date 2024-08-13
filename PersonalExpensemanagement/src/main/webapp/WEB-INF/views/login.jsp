<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<script src="<c:url value="/js/jsfile.js" />"></script>
<link href="<c:url value="/css/common.css" />" rel="stylesheet"></link>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<div class="form-container">
		<form class="form" action="/PersonalExpensemanagement/validate"
			method="post">
			<p class="title">Login</p>
			<p class="message">Welcome back! Please login to your account.</p>
			<label> <input class="input" type="text" id="username"
				name="username" placeholder=" " required=""> <span>Username</span>
			</label> <label> <input class="input" type="password" id="password"
				name="password" placeholder=" " required=""> <span>Password</span>
			</label>
			<button class="submit">Login</button>
			<p class="signup">
				Don't have an account? <a href="/PersonalExpensemanagement/register">Signup</a>
			</p>
		</form>
		<p class="message" style="color: red;">${errorMessage}</p>
	</div>
</body>
</html>
