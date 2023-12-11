<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.MemberDAO" %>
<%@ page import="Model.MovieDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.time.LocalDate" %> 
<%
    MemberDAO mDAO = new MemberDAO();
    List<Map<String, String>> memberList = mDAO.MemberList();
    MovieDAO mvDAO = new MovieDAO();

    String yearParam = request.getParameter("year");
    int year = (yearParam != null && !yearParam.isEmpty()) ? Integer.parseInt(yearParam) : LocalDate.now().getYear();
    // MovieList와 현재 연도를 사용하여 영화 목록 가져오기
    List<Map<String, String>> movieList = mvDAO.MovieList();
    List<Map<String, String>> AllMovie = mvDAO.AllMovie();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 영화목록 (<%= year %>년)</h2>
<% for (Map<String, String> movie : movieList) { %>
    랭킹: <%= movie.get("rank") %><br>
    영화이름: <%= movie.get("movieNm") %><br>
    개봉연도: <%= movie.get("openDt") %><br>
    <hr>
<% } %>


</body>
</html>