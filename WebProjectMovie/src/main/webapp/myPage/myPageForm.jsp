<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.ReserveDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>  
<%
	String memID = (String)session.getAttribute("id");
	ReserveDAO rDAO = new ReserveDAO();
	List<Map<String, String>> reserveList = rDAO.getUserReservations(memID);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>마이페이지</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="./home/indexScript.js"></script>
</head>
<body class="bdstyle">
	<%@ include file="../layout/top.jsp" %>
	<form method="post" action="/WebProjectMovie/update.do">
		<div class="myPage">
			<h2>마이페이지</h2><br>
			<h4>개인정보 변경</h4><br>
			<input type="text" class="inp" style="background:transparent;color:white;" name="password" placeholder="비밀번호 변경" size="15">
			<br><br>
			<input type="text" class="inp" style="background:transparent;color:white;" name="email" placeholder="이메일 변경" size="15">
			<br><br>
			<input type="text" class="inp" style="background:transparent;color:white;" name="name" placeholder="이름 변경" size="15">
			<br><br>
			<input type="text" class="inp" style="background:transparent;color:white;" name="phone" placeholder="전화번호 변경" size="15">
			<br><br><button type="submit" class="btn btn-dark me-2">수정</button>
			<br><hr>
		</div>
	</form>
	<div class="myPage">
		<h4>예매 내역</h4>
		<br>
		<form method="post" action="/WebProjectMovie/cancle.do">
			<table class="table table-dark w-100" border="1">
				    <tr>
				        <th>ID</th>
				        <th>영화명</th>
				        <th>극장명</th>
				        <th>시간</th>
				        <th>좌석</th>
				        <th></th>
				    </tr>
			    	<% for (Map<String, String> reserves : reserveList) { %>
			        <tr>
			            <td><%= reserves.get("id") %></td>
			            <td><%= reserves.get("movie_id") %></td>
			            <td><%= reserves.get("theater_id") %></td>
			            <td><%= reserves.get("date") %></td>
			            <td><%= reserves.get("seat") %></td>
			            <td>
			            	<input type="hidden" name="movie_id" value="<%= reserves.get("movie_id") %>">
	                        <button type="submit" class="btn btn-dark me-2">취소</button>	
						</td>
			        </tr>
			    	<% } %>
		</table>
		</form>
	</div>  
	<%@ include file="../layout/footer.jsp" %>
</body>
<style>
	.bdstyle {
		background-color: black !important;
	}
	.myPage {
		margin-left: 30%;
		margin-right: 30%;
	}
	h2{
		color: #68c1a6;
	}
	.inp {
		border:0;
		border-bottom:2px solid rgb(204,255,204);
		width:200px;
		height:30px;
	}
</style>
</html>