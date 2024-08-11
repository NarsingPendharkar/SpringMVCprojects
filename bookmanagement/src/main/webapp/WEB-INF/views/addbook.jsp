<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>new book</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 20px;
        }
        .container {
            max-width: 600px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center mb-4">Add New Book</h2>
    
    <form action="/bookmanagement/save" method="post" >
    <input type="text" class="form-control" id="id" name="id" placeholder="Enter book name" hidden>
    
        <div class="form-group">
            <label for="bookname">Book Name</label>
            <input type="text" class="form-control" id="bookname" name="bookname" placeholder="Enter book name" required>
        </div>
        <div class="form-group">
            <label for="auther">Author</label>
            <input type="text" class="form-control" id="auther" name="auther" placeholder="Enter author name" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Save</button>
        <a href="/bookmanagement/" class="btn btn-secondary btn-block mt-2">Back to List</a>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
