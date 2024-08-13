<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm" style="
    background-color: #17a2b8 !important;">
        <a class="navbar-brand" href="#">Finance Manager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
               
                <li class="nav-item text-white"><a class="nav-link" href="/PersonalExpensemanagement/login">Login</a></li>
            </ul>
        </div>
    </nav>
   

    <!-- Main Container -->
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="text-center">
          
            <div class="card bg-secondary text-white shadow-lg rounded">
                <div class="card-body">
                    <h1 class="display-4 text-info font-weight-bold mb-4">Welcome to Your Dashboard</h1>
                    
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
</body>
</html>
