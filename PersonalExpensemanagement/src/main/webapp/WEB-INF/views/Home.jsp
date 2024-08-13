<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Personal Finance Management System</title>
    <style>
        /* Base Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1a1a1a, #333);
            color: #fff;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #222;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar .brand {
            font-size: 26px;
            font-weight: 700;
            color: #00bfff;
        }

        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            gap: 20px;
        }

        .navbar ul li {
            display: inline;
        }

        .navbar ul li a {
            color: #fff;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar ul li a:hover {
            background-color: #444;
        }

        /* Main Container */
        .main-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .dashboard {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 800px;
            width: 100%;
            text-align: center;
        }

        .dashboard h1 {
            font-size: 32px;
            color: #00bfff;
            margin-bottom: 25px;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
        }

        .dashboard .summary-card {
            background-color: #2a2a2a;
            padding: 20px;
            border-radius: 12px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .dashboard .summary-card h2 {
            color: #00bfff;
            font-size: 24px;
            margin-bottom: 15px;
        }

        .dashboard .summary-card p {
            font-size: 18px;
            margin-bottom: 5px;
        }

        .dashboard .alert {
            color: #ff4444;
            font-size: 16px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="brand">Finance Manager</div>
        <ul>
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Income</a></li>
            <li><a href="#">Expenses</a></li>
            <li><a href="#">Budget</a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Login</a></li>
        </ul>
    </div>

    <div class="main-container">
        <div class="dashboard">
            <h1>Welcome to Your Dashboard</h1>
            <div class="summary-card">
                <h2>Financial Summary</h2>
                <p>Total Income: $5,000</p>
                <p>Total Expenses: $3,200</p>
                <p>Remaining Budget: $1,800</p>
            </div>
            <div class="summary-card">
                <h2>Monthly Budget</h2>
                <p>Budget Limit: $4,000</p>
                <p>Expenses So Far: $3,200</p>
                <p class="alert">You are nearing your budget limit!</p>
            </div>
            <div class="summary-card">
                <h2>Upcoming Alerts</h2>
                <p>No alerts at this time.</p>
            </div>
        </div>
    </div>
</body>
</html>
