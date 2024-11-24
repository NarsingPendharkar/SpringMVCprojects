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
<body style="font-family:fantasy;">
  <div class="container d-flex align-items-center justify-content-center vh-100">
    <div class="card p-4" style="width: 400px;">
      <h3 class="text-center">Login</h3>
      <form action="auth?action=login" method="post">
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" id="email" class="form-control" placeholder="Enter your email">
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" id="password" class="form-control" placeholder="Enter your password">
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
      </form>
      <p class="text-center mt-3">Don't have an account? <a href="register.html">Register</a></p>
    </div>
  </div>
  <footer class="bg-dark text-light text-center p-3">
    &copy; 2024 Task Management System
  </footer>
</body>
</html>
