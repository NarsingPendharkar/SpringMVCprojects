<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tasks - Task Manager</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body style="font-family:tahoma;">
  <div class="d-flex">
    <!-- Sidebar -->
    <nav class="bg-dark text-light p-3" style="min-width: 250px;">
      <h2>Task Manager</h2>
      <ul class="nav flex-column">
        <li class="nav-item"><a href="dashboard" class="nav-link text-light">Dashboard</a></li>
        <li class="nav-item"><a href="tasks-list" class="nav-link text-light">Tasks</a></li>
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
      <h1>Tasks</h1>
      <c:if test="${not empty message}">
    <div id="msg" class="alert alert-danger">
        <p>${message}</p>
    </div>
</c:if>
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Title</th>
            <th>Assigned User</th>
            <th>Status</th>
            <th>Deadline</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <!-- Iterating over tasks -->
          <c:forEach var="task" items="${tasks}">
            <tr>
              <td>${task.title}</td> 
              <td>${task.assignedUser.username}</td> 
              <td>${task.status}</td> 
              <td>${task.deadline}</td>
              <td>
              <c:url value="editTask/${task.task_id}" var="editUrl"/>
<a href="${editUrl}">
    <button class="btn btn-warning btn-sm">Edit</button>
</a>
<c:url value="deleteTask/${task.task_id}" var="deleteUrl"/>
              <a href="${deleteUrl }"> <button class="btn btn-danger btn-sm">Delete</button></a>
               
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
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
<script src="<c:url value="/js/script.js"/>"></script>
</html>
