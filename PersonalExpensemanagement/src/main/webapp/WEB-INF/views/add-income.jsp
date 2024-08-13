<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Income - Personal Finance Management System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">

    <!-- Main Container -->
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card bg-secondary text-white shadow-lg rounded p-4" style="max-width: 400px; width: 100%;">
            <div class="card-body">
                <h2 class="card-title text-center text-info font-weight-bold mb-4">Add Income</h2>
                <form action="/PersonalExpensemanagement/addincome" method="post">
                    <div class="form-group">
                        <label for="category">Category</label>
                        <input type="text" class="form-control" id="category" name="category" placeholder="Enter income category" required>
                    </div>
                    <div class="form-group">
                        <label for="amount">Amount</label>
                        <input type="number" step="0.01" class="form-control" id="amount" name="amount" placeholder="Enter income amount" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description (Optional)</label>
                        <input type="text" class="form-control" id="description" name="description" placeholder="Enter a description (optional)">
                    </div>
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input type="date" class="form-control" id="date" name="date" required>
                    </div>
                    <button type="submit" class="btn btn-info btn-block">Add Income</button>
                </form>
                <p class="text-danger text-center mt-3"><c:out value="${errorMessage}"/></p>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
