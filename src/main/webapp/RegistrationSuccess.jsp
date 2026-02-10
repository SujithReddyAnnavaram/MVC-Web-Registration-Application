<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>

<style>
    body {
        margin: 0;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #43cea2, #185a9d);
    }

    .success-card {
        background: #ffffff;
        padding: 40px;
        border-radius: 12px;
        width: 380px;
        text-align: center;
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
    }

    .success-card h2 {
        color: #2e7d32;
        margin-bottom: 15px;
    }

    .success-card p {
        color: #555;
        font-size: 16px;
        margin-bottom: 25px;
    }

    .username {
        font-weight: bold;
        color: #185a9d;
        font-size: 18px;
    }

    .btn {
        display: inline-block;
        padding: 10px 20px;
        background: #185a9d;
        color: #fff;
        border-radius: 8px;
        text-decoration: none;
        transition: background 0.3s;
    }

    .btn:hover {
        background: #0f3c6e;
    }
</style>

</head>
<body>

<%
    // Get username from session
    String emailId = (String) session.getAttribute("email");
    if (emailId == null) {
        emailId = "User";
    }
%>

<div class="success-card">
    <h2>Registration Successful 🎉</h2>
    <p>
        Welcome,
        <span class="email"><%= emailId %></span>
    </p>
    <p>Your account has been created successfully.</p>

</div>

</body>
</html>
