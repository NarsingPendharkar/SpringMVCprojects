<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books Manager</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 20px;
        }
        .container {
            max-width: 960px;
        }
        .table th, .table td {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center mb-4">Books Manager</h2>
    
    <form method="get" action="search" class="mb-4">
        <div class="form-row">
            <div class="col-md-8">
                <input type="text" name="keyword" class="form-control" placeholder="Search books" />
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-primary btn-block">Search</button>
            </div>
        </div>
    </form>
    
    <div class="text-center mb-4">
        <a href="newbook" class="btn btn-success">New Book</a>
    </div>
    
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Author</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listbooks}" var="listbooks">
                <tr>
             <td>${listbooks.id}</td>
			<td>${listbooks.bookname}</td>
			<td>${listbooks.auther}</td>
                    <td>
                        <a href="edit?id=${listbooks.id}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="delete?id=${listbooks.id}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
