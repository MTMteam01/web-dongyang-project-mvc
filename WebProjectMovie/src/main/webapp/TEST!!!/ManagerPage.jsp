<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Model.MemberDAO" %>
<%@ page import="Model.MovieDAO" %>
<%@ page import="test.ReserveDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>    
<%
    MemberDAO mDAO = new MemberDAO();
    List<Map<String, String>> memberList = mDAO.MemberList();
    MovieDAO mvDAO = new MovieDAO();
    List<Map<String, String>> movieList = mvDAO.MovieList();
    List<Map<String, String>> allMovie = mvDAO.AllMovie();
    ReserveDAO rDAO = new ReserveDAO();
    List<Map<String, String>> reserveList = rDAO.ReserveList();
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
				<h3>박스오피스 조회</h3>
				<br>
				<!-- 
					<form method="get" action="/WebProjectMovie/boxoffice.do">
						<label>테이블 초기화 : </label> <button type="submit" class="btn btn-dark me-2" >실행</button>
					</form>
					<form method="get" action="/WebProjectMovie/movieinfo.do">
						<input type="text" class="inp" style="background:transparent;color:white;" name="year" placeholder="기준 연도 (예: 20230101)" size="15">
						<button type="submit" class="btn btn-dark me-2" >조회</button>
					</form>
					<br>
				 -->
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
				<br>
				<h3>예매내역 불러오기</h3>
				<br>
				<table class="table table-dark w-100" border="1">
				    <tr>
				        <th>ID</th>
				        <th>영화명</th>
				        <th>극장명</th>
				        <th>시간</th>
				        <th>좌석</th>
				    </tr>
			    	<% for (Map<String, String> reserves : reserveList) { %>
			        <tr>
			            <td><%= reserves.get("id") %></td>
			            <td><%= reserves.get("movie_id") %></td>
			            <td><%= reserves.get("theater_id") %></td>
			            <td><%= reserves.get("date") %></td>
			            <td><%= reserves.get("seat") %></td>
			        </tr>
			    	<% } %>
				</table>
	    		<form method="post" action="/WebProjectMovie/reservecancle.do" >
	    			<input type="text" class="inp" style="background:transparent;color:white;" name="id" placeholder="아이디 입력" size="15">
	    			<br><br>
	    			<label for="movieSelect" class="form-label" style="color:#68c1a6">
	    			영화 선택
	    			<select class="form-select w-75" id="movieSelect" name="movieId" style="background-color:black;color:#95a5a6;">
		        		<option selected disabled>영화를 선택하세요</option>
		        		<option value="movie1">movie1</option>
		        		<option value="movie2">movie2</option>
		        		<option value="movie3">movie3</option>
		    		</select>
	    			</label>
		    		<button type="submit" class="btn btn-dark me-2" >삭제</button>
	    		</form>
			</div>
			<div id="Administor_div2">
				<br>
				<h3>영화 불러오기</h3>
				<br>
				<form method="get" action="/WebProjectMovie/moviereset.do">
					<label>테이블 초기화 : </label> <button type="submit" class="btn btn-dark me-2" >실행</button>
				</form>
				<form method="get" action="/WebProjectMovie/moviemenu.do">
					<input type="text" class="inp_2" style="background:transparent;color:white;" name="count" placeholder="개수 (예 : 20)">
					<input type="text" class="inp" style="background:transparent;color:white;" name="releaseDts" placeholder="개봉일 시작 (예 : 20230101)">
					<input type="text" class="inp" style="background:transparent;color:white;" name="releaseDte" placeholder="개봉일 종료 (예 : 20231201)">
					<button type="submit" class="btn btn-dark me-2" >조회</button>
				</form>
				<br>
				<table class="table table-dark w-100" border="1">
				    <tr>
				        <th>ID</th>
				        <th>제목</th>
				        <th>년도</th>
				        <th>날짜</th>
				        <th>장르</th>
				        <th>국가</th>
				    </tr>
				    <% for (Map<String, String> movies : allMovie) { %>
				    <tr>
				         <td><%= movies.get("movieId") %></td>
				         <td><%= movies.get("title") %></td>
				         <td><%= movies.get("year") %></td>
				         <td><%= movies.get("date") %></td>
				         <td><%= movies.get("genre") %></td>
				         <td><%= movies.get("nation") %></td>
				    </tr>
				    <% } %>
				</table>
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
				margin-left: 3%;
			}
			#Administor_div1 {
				width: 50%;
			}
			#Administor_div2 {
				margin-left: 3%;
				margin-right: 3%;
				width: 50%;
			}
			.inp {
			    border:0;
			    border-bottom:2px solid rgb(204,255,204);
			    width:200px;
			    height:30px;
			}
			.inp_2{
				border:0;
			    border-bottom:2px solid rgb(204,255,204);
			    width:100px;
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