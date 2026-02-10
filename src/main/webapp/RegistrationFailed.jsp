<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Failed</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #ff416c, #ff4b2b);
    }

    .error-card {
        background: #ffffff;
        padding: 40px;
        width: 400px;
        text-align: center;
        border-radius: 12px;
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
    }

    .error-card h2 {
        color: #d32f2f;
        margin-bottom: 15px;
    }

    .error-message {
        color: #555;
        font-size: 16px;
        margin-bottom: 25px;
    }

    .btn {
        display: inline-block;
        padding: 10px 20px;
        background: #d32f2f;
        color: #fff;
        border-radius: 8px;
        text-decoration: none;
        transition: background 0.3s;
    }

    .btn:hover {
        background: #b71c1c;
    }
</style>

</head>
<body>

<%
    // 🔹 READ session attribute HERE
    String errorMessage = (String) session.getAttribute("emailId");

    // Fallback message if session attribute is missing
    if (errorMessage == null) {
        errorMessage = "Registration failed. Please try again.";
    }
%>

<div class="error-card">
    <h2>Registration Failed ❌</h2>

    <!-- 🔹 DISPLAY session attribute HERE -->
    <p class="error-message"><%= errorMessage %></p>

    <a href="register.jsp" class="btn">Try Again</a>
</div>

</body>
</html>
