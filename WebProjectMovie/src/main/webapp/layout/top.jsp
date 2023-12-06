<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 class="title"> MTM </h1>
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="/WebProjectMovie/index.jsp" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Movie</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">OST</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">RESERVE</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">MY PAGE</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">HELP</a></li>
      </ul>

      <div class="col-md-3 text-end">
        <button type="button" class="btn btn-dark me-2" onclick="redirectToLoginPage()">로그인</button>
        <button type="button" class="btn btn-dark" onclick="redirectToRegisterPage()">회원가입</button>
        
      </div>
    </header>
  </div
  >
</body>
<style>
    /* 제목 스타일 설정 */
    .title {
        text-align: center;
        color: rgb(162, 220, 209);
        font-family: 'Georgia', sans-serif;
    }
</style>
    <script>
        function redirectToLoginPage() {
            // Replace 'login.jsp' with the actual URL of the login page
            window.location.href = '/WebProjectMovie/login/loginForm3.jsp';
        }
        
        function redirectToRegisterPage() {
            // Replace 'login.jsp' with the actual URL of the login page
            window.location.href = '/WebProjectMovie/register/RegisterPage.jsp';
        }
    </script>
</html>