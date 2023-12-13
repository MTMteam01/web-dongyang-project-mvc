<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<div class="button_menu">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="/WebProjectMovie/home/index.jsp" class="nav-link px-2 link-secondary text-reset">HOME</a></li>
        <li><a href="/WebProjectMovie/movie/movieForm.jsp" class="nav-link px-2 link-dark text-reset">MOVIE</a></li>
        <li><a href="../reserve/reserveForm.jsp" class="nav-link px-2 link-dark text-reset">RESERVE</a></li>
        <li><a href="../home/moviefaq.jsp" class="nav-link px-2 link-dark text-reset">HELP</a></li>
      </ul>
      <div class="col-md-3 text-end">
      <% 
      String userId = (String)session.getAttribute("id");
      if(userId != null) { // 로그인한 경우 
    	  String memid = (String)session.getAttribute("id");
      %> <label class="welcome"> <%= memid %> 님 환영합니다. </label> 
      <% if(userId.equals("root")){ %>
	       <button id="logoutButton" type="button" class="btn btn-dark me-2" onclick="logout()">
	        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
	  			<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"/>
				</svg><br>로그아웃
			</button>
			<button type="button" class="btn btn-dark" onclick="redirectToAdministor()">
	        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
	  			<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
				</svg><br>관리자
			</button>
		<%} else { %>
			<button id="logoutButton" type="button" class="btn btn-dark me-2" onclick="logout()">
	        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
	  			<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"/>
				</svg><br>로그아웃
			</button>
			<button type="button" class="btn btn-dark" onclick="redirectToMyPage()">
	        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
	  			<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
				</svg><br>MyPage
			</button>
		<% }} else { %>
        <button id="loginButton" type="button" class="btn btn-dark me-2" onclick="redirectToLoginPage()">
        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
  			<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"/>
			</svg><br>로그인
		</button>
        <button id="registerButton" type="button" class="btn btn-dark" onclick="redirectToRegisterPage()">
        	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-add" viewBox="0 0 16 16">
  			<path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0Zm-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
  			<path d="M2 13c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z"/>
			</svg><br>회원가입
		</button>
		<% } %>

    </header>
   </div>
</body>
<style>
	html {
	background-color: black !important;
	}
	.welcome{
		text-algin: left;
	}
	.button_menu {
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
        function redirectToMyPage() {
            // Replace 'login.jsp' with the actual URL of the login page
            window.location.href = '/WebProjectMovie/myPage/myPageForm.jsp';
        }
        function redirectToAdministor() {
            // Replace 'login.jsp' with the actual URL of the login page
            window.location.href = '/WebProjectMovie/TEST!!!/ManagerPage.jsp';
        }
        function logout() {
            window.location.href = '/WebProjectMovie/Logout.do';
        }
    </script>
</html>