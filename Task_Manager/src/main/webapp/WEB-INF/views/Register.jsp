<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Task Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>

<body style="font-family: fantasy;">
    <div class="container d-flex align-items-center justify-content-center vh-100">
        <div class="card p-4" style="width: 400px;">
            <h3 class="text-center">Register</h3>
            <form action="saveUser" method="post">
                <!-- Hidden User ID field -->
                <input type="hidden" id="user_id" name="user_id" class="form-control">

                <!-- Username Field -->
                <div class="mb-3">
                    <label for="username" class="form-label">User Name</label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
                </div>

                <!-- Email Field -->
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                </div>

                <!-- Password Field -->
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
                </div>

                <!-- Role Selection Field -->
                <div class="mb-3">
                    <label for="role" class="form-label">Role</label>
                    <select id="role" name="role" class="form-control" required>
                        <option value="USER">USER</option>
                        <option value="ADMIN">ADMIN</option>
                    </select>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn btn-primary w-100">Register</button>
            </form>

            <!-- Login Link -->
            <p class="text-center mt-3">
                Already have an account? <a href="loginPage">Login</a>
            </p>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-light text-center p-3">
        <p>&copy; 2024 Task Management System</p>
        <div>
            <a href="https://github.com/NarsingPendharkar" class="text-light me-3" target="_blank">
                <i class="bi bi-github"></i> GitHub
            </a>
            <a href="mailtonarsing@example.com" class="text-light me-3">
                <i class="bi bi-envelope-fill"></i> 
            </a>
            <a href="+91-9209259092" class="text-light">
                <i class="bi bi-telephone-fill"></i> 
            </a>
        </div>
    </footer>

</body>

</html>
