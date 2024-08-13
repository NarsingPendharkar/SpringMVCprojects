<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <!-- <style>
        /* Base Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form Container */
        .form-container {
            background-color: #1a1a1a;
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        .title {
            font-size: 28px;
            font-weight: 600;
            color: #00bfff;
            margin-bottom: 10px;
            text-align: center;
        }

        .message {
            font-size: 14.5px;
            color: rgba(255, 255, 255, 0.7);
            text-align: center;
            margin-bottom: 20px;
        }

        .form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .flex {
            display: flex;
            gap: 10px;
        }

        /* Form Fields */
        .form label {
            position: relative;
            width: 100%;
        }

        .form input.input {
            background-color: #333;
            color: #fff;
            width: 95%;
            padding: 15px 10px;
            border: 1px solid rgba(105, 105, 105, 0.4);
            border-radius: 10px;
            font-size: 16px;
            outline: none;
        }

        .form input.input + span {
            color: rgba(255, 255, 255, 0.5);
            position: absolute;
            left: 15px;
            top: 10px;
            font-size: 0.9em;
            transition: 0.3s ease;
        }

        .form input.input:focus + span,
        .form input.input:not(:placeholder-shown) + span {
            color: #00bfff;
            top: -10px;
            font-size: 0.75em;
            font-weight: 600;
            background-color: #1a1a1a;
            padding: 0 5px;
        }

        /* Submit Button */
        .submit {
            background-color: #00bfff;
            color: #fff;
            padding: 15px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit:hover {
            background-color: #009fdd;
        }

        /* Sign-in Link */
        .signin {
            font-size: 14.5px;
            color: rgba(255, 255, 255, 0.7);
            text-align: center;
            margin-top: 20px;
        }

        .signin a {
            color: #00bfff;
            text-decoration: none;
        }

        .signin a:hover {
            text-decoration: underline;
        }
    </style> -->
    
    <link rel="stylesheet" href="<c:url value="/css/common.css" ></c:url>">
</head>
<body>
    <div class="form-container">
        <form class="form" method="post" action="/PersonalExpensemanagement/saveuser">
            <p class="title">Register</p>
            <p class="message">Signup now and get full access to our app.</p>
            <div class="flex">
                <label>
                    <input class="input" type="text" id="username" name="username" placeholder=" " required="">
                    <span>Username</span>
                </label>
               
            </div>
            <label>
                <input class="input" id="email" name="email" type="email" placeholder=" " required="">
                <span>Email</span>
            </label>
            <label>
                <input class="input" type="password" id="password" name="password" placeholder=" " required="">
                <span>Password</span>
            </label>
           
            <button class="submit">Submit</button>
            <p class="/login">Already have an account? <a href="#">Sign in</a></p>
        </form>
    </div>
</body>
</html>
