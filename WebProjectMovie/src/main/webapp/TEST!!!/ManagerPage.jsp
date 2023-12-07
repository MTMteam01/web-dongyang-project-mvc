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
</head>
<body>
	<h1>관리자 전용</h1>
	<form method="post" action="/WebProjectMovie/administor.do">
		삭제할 회원 : <input type="text" name="id">
		<input type="submit" value="탈퇴">
	</form>
	<h1>회원 목록</h1>
	<table border="1">
    <tr>
        <th>ID</th>
        <th>Password</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Birth</th>
    </tr>
    <% for (Map<String, String> member : memberList) { %>
        <tr>
            <td><%= member.get("id") %></td>
            <td><%= member.get("password") %></td>
            <td><%= member.get("name") %></td>
            <td><%= member.get("phone") %></td>
            <td><%= member.get("email") %></td>
            <td><%= member.get("birth") %></td>
        </tr>
    <% } %>
	</table>
	<br>
	<h1>박스오피스 목록</h1>
	<form method="get" action="/WebProjectMovie/boxoffice.do">
		테이블 초기화 : <input type="submit" value="실행">
	</form>
	<form method="get" action="/WebProjectMovie/movieinfo.do">
		기준 연도 (예: 20230101) : <input type="text" name="year">
		<input type="submit" value="조회">
	</form>
	<table border="1">
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
</body>
</html>