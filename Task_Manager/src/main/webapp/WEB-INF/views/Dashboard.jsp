<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Task Management System - Dashboard</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body style="font-family:fantasy;">
  <div class="d-flex">
    <!-- Sidebar -->
   <nav class="bg-dark text-light p-3" style="min-width: 250px;">
  <h2>Task Manager</h2>
  <ul class="nav flex-column">
    <li class="nav-item"><a href="dashboard" class="nav-link text-light">Dashboard</a></li>
    <li class="nav-item"><a href="tasks-list" class="nav-link text-light">Tasks</a></li>
    <li class="nav-item"><a href="createtask" class="nav-link text-light">Create Task</a></li>
    
    <!-- If user is logged in -->
    <c:if test="${not empty loggedUser}">
      <li class="nav-item"><span class="nav-link text-light">Welcome, ${loggedUser}</span></li>
      <li class="nav-item"><a href="logout" class="nav-link text-light">Logout</a></li>
    </c:if>
    
    <!-- If user is not logged in -->
    <c:if test="${empty loggedUser}">
      <li class="nav-item"><a href="loginPage" class="nav-link text-light">Login</a></li>
    </c:if>
  </ul>
</nav>



    <!-- Main Content -->
    <div class="container-fluid p-4">
      <h1>Dashboard</h1>
      <div class="row">
        <div class="col-md-3 mb-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Total Tasks</h5>
              <p class="card-text">50</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Completed Tasks</h5>
              <p class="card-text">30</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Overdue Tasks</h5>
              <p class="card-text">5</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Chart Section -->
      <div>
        <canvas id="taskChart" style="max-height: 300px;"></canvas>
      </div>
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

  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
    const ctx = document.getElementById('taskChart').getContext('2d');
    const taskChart = new Chart(ctx, {
      type: 'pie',
      data: {
        labels: ['To Do', 'In Progress', 'Completed'],
        datasets: [{
          data: [10, 20, 30],
          backgroundColor: ['#f39c12', '#3498db', '#2ecc71']
        }]
      }
    });
  </script>
</body>
</html>
