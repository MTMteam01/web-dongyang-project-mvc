+<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<h1 class="title"> MTM </h1>
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="/WebProjectMovie/home/index.jsp" class="nav-link px-2 link-secondary text-reset">Home</a></li>
        <li><a href="/WebProjectMovie/movie/movieForm.jsp" class="nav-link px-2 link-dark text-reset">Movie</a></li>
        <li><a href="../reserve/reserveForm.jsp" class="nav-link px-2 link-dark text-reset">RESERVE</a></li>
        <li><a href="../myPage/myPageForm.jsp" class="nav-link px-2 link-dark text-reset">MY PAGE</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-reset">HELP</a></li>
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
html {
background-color: black !important;
}
	.container {
	color: #95a5a6 !important;
	}
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
            window.location.href = '/WebProjectMovie/login/loginForm.jsp';
        }
        
        function redirectToRegisterPage() {
            // Replace 'login.jsp' with the actual URL of the login page
            window.location.href = '/WebProjectMovie/register/RegisterPage.jsp';
        }
    </script>
</html>