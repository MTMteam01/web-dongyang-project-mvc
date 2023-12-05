<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
</head>
<body>
    <h2>Welcome, ${sessionScope.id}!</h2>
    <!-- 여기에 환영 메시지 또는 사용자 정보 출력 등을 추가할 수 있습니다. -->

    <form action="/WebProjectMovie/Logout.do" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
