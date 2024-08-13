<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - Personal Finance Management System</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<%-- <link href="<c:url value='/css/dashboard.css' />" rel="stylesheet"> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body class="bg-dark text-white">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-info shadow-sm">
        <a class="navbar-brand" href="#">Finance Manager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <c:choose>
                    <c:when test="${not empty user}">
                        <li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
                        <li class="nav-item"><a class="nav-link" href="/PersonalExpensemanagement/addincomepage">Income</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Expenses</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Budget</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Reports</a></li>
                        <li class="nav-item"><a class="nav-link" href="/PersonalExpensemanagement/login">Logout: "${user.username}"</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item"><a class="nav-link" href="/PersonalExpensemanagement/login">Login</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>

    <!-- Main Container -->
    <div class="container mt-5">
        <h1 class="text-center text-info font-weight-bold mb-4">Welcome to Your Dashboard</h1>

        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="card bg-secondary text-white shadow-lg rounded">
                    <div class="card-body" style="height: 260px;">
                        <h5 class="card-title text-info">Financial Summary</h5>
                        <c:if test="${not empty user}">
                            <p class="card-text">Total Income: ${income}</p>
                        </c:if>
                        <p class="card-text">Total Expenses: $3,200</p>
                        <p class="card-text">Remaining Budget: $1,800</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <div class="card bg-secondary text-white shadow-lg rounded">
                    <div class="card-body"style="height: 260px;">
                        <h5 class="card-title text-info">Monthly Budget</h5>
                        <p class="card-text">Budget Limit: $4,000</p>
                        <p class="card-text">Expenses So Far: $3,200</p>
                        <p class="card-text text-danger">You are nearing your budget limit!</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <div class="card bg-secondary text-white shadow-lg rounded">
                    <div class="card-body" style="height: 260px;">
                        <h5 class="card-title text-info">Upcoming Alerts</h5>
                        <p class="card-text">No alerts at this time.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#17a2b8" fill-opacity="1" d="M0,64L60,80C120,96,240,128,360,144C480,160,600,160,720,181.3C840,203,960,245,1080,245.3C1200,245,1320,203,1380,181.3L1440,160L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"></path></svg>
    
    </div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="<c:url value='/js/script.js' />"></script>
</body>
</html>
 