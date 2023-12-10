<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <title>로그인 템플릿 · Bootstrap v5.3</title>

  </head>
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


  <style>
      /* 제목 스타일 설정 */
    .title {
        text-align: center;
        color: rgb(162, 220, 209);
        font-family: 'Georgia', sans-serif;
        
    }
   	body{
		background-color:black;
	}
	form{
		text-align: center;
        color: rgb(162, 220, 209);
	}
	.info_check {
    margin-top:20px;
    overflow:auto;
    white-space:nowrap;
    overflow-y:scroll;
    width:530px; height:150px;
    border:1px solid rgb(117,117,117);  
    font-size:14px;
	}
	.inp {
    border:0;
    border-bottom:2px solid rgb(204,255,204);
    width:200px;
    height:30px;
	}
    .nav-link,
    .text-muted {
    color: #95a5a6 !important; /* Mint color */
    }
		
    .nav-link:hover {
    color: #68c1a6 !important; /* Darker mint color when hovering */
    }

    </style>
</html>