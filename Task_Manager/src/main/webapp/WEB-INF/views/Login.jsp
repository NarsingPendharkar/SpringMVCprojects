<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - Task Manager</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body style="font-family:tahoma;">
  <div class="container d-flex align-items-center justify-content-center vh-100">
    <div class="card p-4" style="width: 400px;">
    <c:if test="${not empty message}">
    <div id="msg" class="alert alert-danger">
        <p>${message}</p>
    </div>
</c:if>
    
      <h3 class="text-center">Login </h3>
      <form action="authenticateUser" method="post">
        <div class="mb-3">
          <label for="username" class="form-label">User Name</label>
          <input type="input" id="username" name="username" class="form-control" placeholder="Enter your username">
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password">
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
      </form>
      <p class="text-center mt-3">Don't have an account? <a href="registerPage">Register</a></p>
    </div>
  </div>
  <!-- Footer -->
  <footer class="bg-dark text-light text-center p-3">
    <p>&copy; 2024 Task Management System</p>
    <div>
      <a href="https://github.com/NarsingPendharkar" class="text-light me-3" target="_blank">
        <i class="bi bi-github"></i> GitHub
      </a>
      <a href="mailto:your-email@example.com" class="text-light me-3">
        <i class="bi bi-envelope-fill"></i> mailtonarsing@example.com
      </a>
      <a href="tel:+1234567890" class="text-light">
        <i class="bi bi-telephone-fill"></i> +91-9209259092
      </a>
    </div>
  </footer>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="<c:url value="/js/script.js"/>"></script>
<%-- <link href="<c:url value="/css/common.css" />" rel="stylesheet"></link>
 --%>
 </html>
