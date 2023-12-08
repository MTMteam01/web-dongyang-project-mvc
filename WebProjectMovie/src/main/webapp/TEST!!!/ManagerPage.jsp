<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Model.MemberDAO" %>
<%@ page import="Model.MovieDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>    
<%
    MemberDAO mDAO = new MemberDAO();
    List<Map<String, String>> memberList = mDAO.MemberList();
    MovieDAO mvDAO = new MovieDAO();
    List<Map<String, String>> movieList = mvDAO.MovieList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
	<body>
		<%@ include file="../layout/top.jsp" %>
		<h1 id="title">관리자 페이지</h1>
		<div id="main">
			<div id="Administor_div1">
				<br>
				<h3>회원 목록</h3>
				<br>
				<table class="table table-dark w-100" border="1">
				    <tr>
				        <th>ID</th>
				        <th>이름</th>
				        <th>전화번호</th>
				        <th>Email</th>
				        <th>생일</th>
				        <th>권한</th>
				    </tr>
			    	<% for (Map<String, String> member : memberList) { %>
			        <tr>
			            <td><%= member.get("id") %></td>
			            <td><%= member.get("name") %></td>
			            <td><%= member.get("phone") %></td>
			            <td><%= member.get("email") %></td>
			            <td><%= member.get("birth") %></td>
			            <td><%= member.get("authority") %></td>
			        </tr>
			    	<% } %>
				</table>
				<form method="post" action="/WebProjectMovie/administor.do">
					<input type="text" class="inp" style="background:transparent;color:white;" name="id" placeholder="삭제할 회원" size="15">
					<button type="submit" class="btn btn-dark me-2" >탈퇴</button>
				</form>
				<br><br>
				<h3>박스오피스 불러오기</h3>
				<br>
				<form method="get" action="/WebProjectMovie/boxoffice.do">
					<label>테이블 초기화 : </label> <button type="submit" class="btn btn-dark me-2" >실행</button>
				</form>
				<form method="get" action="/WebProjectMovie/movieinfo.do">
					<input type="text" class="inp" style="background:transparent;color:white;" name="year" placeholder="기준 연도 (예: 20230101)" size="15">
					<button type="submit" class="btn btn-dark me-2" >조회</button>
				</form>
				<br>
				<table class="table table-dark w-100" border="1">
				    <tr>
				        <th>랭킹</th>
				        <th>영화이름</th>
				        <th>개봉연도</th>
				    </tr>
				    <% for (Map<String, String> movie : movieList) { %>
				    <tr>
				         <td><%= movie.get("rank") %></td>
				         <td><%= movie.get("movieNm") %></td>
				         <td><%= movie.get("openDt") %></td>
				    </tr>
				    <% } %>
				</table>
			</div>
			<div id="Administor_div2">
				<br>
				<h3>예약목록 전체조회</h3>
				영화 예약 테이블 넣을곳
			</div>
		</div>
		<%@ include file="../layout/footer.jsp" %>
	</body>
	
	<style>
			body {
	            background-color: black;
	            font-family: Arial, sans-serif;
	            color: white !important;
	        }
	        h1, h3, label {
				color: #9EC8B9;
			}
			#title{
				text-align: center;
			}
			#main {
				display: flex;
				margin-left: 6%;
			}
			#Administor_div1 {
				width: 50%;
			}
			#Administor_div2 {
				margin-left: 6%;
				width: 50%;
			}
			.inp {
			    border:0;
			    border-bottom:2px solid rgb(204,255,204);
			    width:200px;
			    height:30px;
			}	
	        .bo {
	            text-align: center;
	        }
	        .nav-link,
	        .text-muted {
	            color: #95a5a6 !important; /* Mint color */
	        }
			
	        .nav-link:hover {
	            color: #68c1a6 !important; /* Darker mint color when hovering */
	        }
	        .mv{
	        	text-align: center;
	        }
	</style>
</html>