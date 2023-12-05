<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="GET" action="/WebProjectMovie/register.do">
		ID : <input type="text" name="id" size="15"> <br>
		PASS : <input type="text" name="password" size="15"> <br>
		NAME : <input type="text" name="name" size="15"> <br>
		PHONE : <input type="text" name="phone" size="15"> <br>
		AUTH : <br>
		고객 <input type="radio" name="auth" value="Customer">  
		관리자 <input type="radio" name="auth" value="Manager">
		<br>
		<input type="submit" value="회원가입">
	</form>	
</body>
</html>