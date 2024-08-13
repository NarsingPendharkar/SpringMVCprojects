<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - Personal Finance Management System</title>
<link href="<c:url value="/css/dashboard.css" ></c:url>"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>
	<div class="navbar">
		<div class="brand">Finance Manager</div>
		<ul>
			<% 
            String user=(String)session.getAttribute("user");
            if(user==null){
            %><li><a href="/PersonalExpensemanagement/login">Login</a></li>
			<%}
            else{
            	%><li><a href="#">Dashboard</a></li>
			<li><a href="#">Income</a></li>
			<li><a href="#">Expenses</a></li>
			<li><a href="#">Budget</a></li>
			<li><a href="#">Reports</a></li>
			<li><a href="/PersonalExpensemanagement/login">Logout :- <%=user %></a>
			</li>
			<%
            }
            %>
		</ul>
	</div>
	<div class="main-container">
		<div class="dashboard">
			<h1 class="glowing-text">Welcome to Your Dashboard</h1>
			<div class="summary-card">
				<h2>Financial Summary</h2>
				<p>Total Income: $5,000</p>
				<p>Total Expenses: $3,200</p>
				<p>Remaining Budget: $1,800</p>
			</div>
			<div class="summary-card">
				<h2>Monthly Budget</h2>
				<p>Budget Limit: $4,000</p>
				<p>Expenses So Far: $3,200</p>
				<p class="alert">You are nearing your budget limit!</p>
			</div>
			<div class="summary-card">
				<h2>Upcoming Alerts</h2>
				<p>No alerts at this time.</p>
			</div>
		</div>
	</div>
</body>
<script src="<c:url value="/js/script.js" />"></script>
</html>
