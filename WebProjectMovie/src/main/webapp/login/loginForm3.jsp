<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    <h2>Login</h2>
    <form action="/WebProjectMovie/Login.do" method="post">
        <label for="id">ID:</label>
        <input type="text" id="id" name="id" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>

        <input type="submit" value="Login">
    </form>

    <c:if test="${not empty errorMessage}">
        <p>${errorMessage}</p>
    </c:if>
    </body>
    </html>