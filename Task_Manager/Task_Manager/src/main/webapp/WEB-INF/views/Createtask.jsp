<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create Task - Task Manager</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body style="font-family:fantasy;">
  <div class="d-flex">
    <!-- Sidebar -->
    <nav class="bg-dark text-light p-3" style="min-width: 250px;">
      <h2>Task Manager</h2>
      <ul class="nav flex-column">
        <li class="nav-item"><a href="dashboard" class="nav-link text-light">Dashboard</a></li>
        <li class="nav-item"><a href="tasks" class="nav-link text-light">Tasks</a></li>
        <li class="nav-item"><a href="createtask" class="nav-link text-light">Create Task</a></li>
        
        <!-- If user is logged in -->
        <c:if test="${not empty sessionScope.loggedUser}">
          <li class="nav-item"><span class="nav-link text-light">Welcome, ${sessionScope.loggedUser}</span></li>
          <li class="nav-item"><a href="logout" class="nav-link text-light">Logout</a></li>
        </c:if>
        
        <!-- If user is not logged in -->
        <c:if test="${empty sessionScope.loggedUser}">
          <li class="nav-item"><a href="loginPage" class="nav-link text-light">Login</a></li>
        </c:if>
      </ul>
    </nav>

    <!-- Main Content -->
    <div class="container-fluid p-4">
      <h1>Create/Update Task</h1>
      <form style="font-family:Tahoma;">
        <div class="row">
          <!-- First Column: Title and Description -->
          <div class="col-md-6 mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" id="title" class="form-control" placeholder="Enter task title">
          </div>

          <div class="col-md-6 mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea id="description" class="form-control" rows="3" placeholder="Enter task description"></textarea>
          </div>
        </div>

        <div class="row">
          <!-- Second Column: Deadline and Priority -->
          <div class="col-md-6 mb-3">
            <label for="deadline" class="form-label">Deadline</label>
            <input type="date" id="deadline" class="form-control">
          </div>

          <div class="col-md-6 mb-3">
            <label for="priority" class="form-label">Priority</label>
            <select id="priority" class="form-select">
              <option value="low">Low</option>
              <option value="medium">Medium</option>
              <option value="high">High</option>
            </select>
          </div>
        </div>

        <div class="row">
          <!-- Third Column: Status and Assignee -->
          <div class="col-md-6 mb-3">
            <label for="status" class="form-label">Status</label>
            <select id="status" class="form-select">
              <option value="todo">To Do</option>
              <option value="inprogress">In Progress</option>
              <option value="completed">Completed</option>
            </select>
          </div>

          <div class="col-md-6 mb-3">
            <label for="assignee" class="form-label">Assign To</label>
            <select id="assignee" class="form-select">
              <option>John Doe</option>
              <option>Jane Smith</option>
            </select>
          </div>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-success">Save Task</button>
      </form>
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
</html>
