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
<%@ include file="../layout/top.jsp" %>
<div class="joinForm">
	<form method="GET" action="/WebProjectMovie/register.do">
	<br>
	<h3>회원가입</h3>
	<br><br>
		ID &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
		<input type="text" class="inp"  style="background:transparent;color:white;" name="id" size="15"> <br>
		<br>	
		PASS &nbsp;&nbsp;&nbsp;&nbsp; : 
		<input type="text" class="inp"  style="background:transparent;color:white;" name="password" size="15"> <br>
		<br>
		NAME &nbsp;&nbsp;&nbsp; : 
		<input type="text" class="inp"  style="background:transparent;color:white;" name="name" size="15"> <br>
		<br>
		PHONE &nbsp;&nbsp; : 
		<input type="text" class="inp"  style="background:transparent;color:white;" placeholder=" ex) 010-1234-5678" name="phone" size="15"> <br>
		<br>
		EMAIL &nbsp;&nbsp;&nbsp;: 
		<input type="text" class="inp"  style="background:transparent;color:white;" placeholder=" ex) example@gmail.com " name="phone" size="15"> <br>
		<br>
		BIRTH &nbsp;&nbsp;&nbsp; : 
		<input type="text" class="inp"  style="background:transparent;color:white;" placeholder=" ex) 020927" name="phone" size="15"> <br>
		<br>
		AUTH
		<br><br>
		고객 
		<input type="radio" name="auth" value="Customer">  
		관리자 
		<input type="radio" name="auth" value="Manager">
		<br>
		<br>
		<br>
		<input type="submit" style="background:transparent;color:rgb(162, 220, 209);" value="회원가입">		
	</form>	
</div>

<%@ include file="../layout/footer.jsp" %>
</body>
<style>
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