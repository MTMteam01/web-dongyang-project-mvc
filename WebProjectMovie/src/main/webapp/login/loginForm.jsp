<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <title>로그인</title>
  <link rel="stylesheet" href="login.css">
  <title>로그인 템플릿</title>

  </head>
  <body class="lg">
  <%@ include file="../../layout/top.jsp" %>
  <div class="joinForm">
    
      <form action="/WebProjectMovie/Login.do" method="post">
      <br>
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1><br><br>

          
          <label for="id">아이디 &nbsp;&nbsp;&nbsp;:</label>
          <input type="text" class="inp" style="background:transparent;color:white;" name="id" id="id" placeholder="아이디" size="15">
			<br><br><br>
		  <label for="password">비밀번호&nbsp;:</label>
          <input type="password" class="inp" style="background:transparent;color:white;" name="password" id="password" placeholder="비밀번호" size="15">
            <br><br><br><br>

		  <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
          <label class="form-check-label" for="flexCheckDefault">
            아이디 저장
          </label>
          <br><br>

       <input type="submit" style="background:transparent;color:rgb(162, 220, 209);" value="Sign In">	
        <br><br>
      </form>
        <c:if test="${not empty errorMessage}">
        <p>${errorMessage}</p>
        </c:if>
</div>

  </body>
  <%@ include file="../layout/footer.jsp" %>
</html>