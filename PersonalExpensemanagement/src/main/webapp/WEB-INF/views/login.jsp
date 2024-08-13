<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form - Personal Finance Management System</title>
    <script src="<c:url value="/js/jsfile.js" />"></script>
    <link href="<c:url value="/css/common.css" />" rel="stylesheet"></link>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">

    <!-- Main Container -->
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card bg-secondary text-white shadow-lg rounded p-4" style="max-width: 400px; width: 100%;">
            <div class="card-body">
                <h2 class="card-title text-center text-info font-weight-bold mb-4">Login</h2>
                <form action="/PersonalExpensemanagement/validate" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                    </div>
                    <button type="submit" class="btn btn-info btn-block">Login</button>
                </form>
                <p class="text-center mt-3">Don't have an account? <a href="/PersonalExpensemanagement/register" class="text-info">Signup</a></p>
                <c:if test="${not empty errorMessage}">
                    <p class="text-center text-danger mt-2">${errorMessage}</p>
                </c:if>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
