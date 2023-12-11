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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<meta charset="UTF-8">
<title>영화전체</title>
</head>
<body class="bdg">
<%@ include file="../../layout/top.jsp" %>
<h1 style="text-align: center;"> ALL MOVIES </h1>
<div class="row row-cols-1 row-cols-md-4 g-4">
  <div class="col">
    <div class="card h-100">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87554/87554_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">서울의 봄</h5>
        <p class="card-text">
        <% 
        Map<String, String> movie0 = movieList.get(0);%>
        랭킹: <%= movie0.get("rank") %><br>
        누적관객수: <%= movie0.get("audiAcc") %><br>
		<%= movie0.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87594/87594_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">3일의 휴가</h5>
        <p class="card-text">
        <% 
    	Map<String, String> movie1 = movieList.get(1); %>
		랭킹: <%= movie1.get("rank") %><br>
		누적관객수: <%= movie1.get("audiAcc") %><br>
		<%= movie1.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87596/87596_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">나폴레옹</h5>
        <p class="card-text">        
        <% 
        Map<String, String> movie2 = movieList.get(2);%>
        랭킹: <%= movie2.get("rank") %><br>
        누적관객수: <%= movie2.get("audiAcc") %><br>
		<%= movie2.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87453/87453_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">뽀로로 극장판 슈퍼스타 대모험</h5>
        <p class="card-text">
        <% 
        Map<String, String> movie3 = movieList.get(3);%>
        랭킹: <%= movie3.get("rank") %><br>
        누적관객수: <%= movie3.get("audiAcc") %><br>
		<%= movie3.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87718/87718_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">싱글인서울</h5>
        <p class="card-text">        
        <% 
        Map<String, String> movie4 = movieList.get(4);%>
        랭킹: <%= movie4.get("rank") %><br>
        누적관객수: <%= movie4.get("audiAcc") %><br>
		<%= movie4.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87716/87716_1000.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">괴물</h5>
        <p class="card-text">
        <% 
        Map<String, String> movie5 = movieList.get(5);%>
        랭킹: <%= movie5.get("rank") %><br>
        누적관객수: <%= movie5.get("audiAcc") %><br>
		<%= movie5.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
      <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87550/87550_1000.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">프레디의 피자가게</h5>
        <p class="card-text">
        <% 
        Map<String, String> movie6 = movieList.get(6);%>
        랭킹: <%= movie6.get("rank") %><br>
        누적관객수: <%= movie6.get("audiAcc") %><br>
		<%= movie6.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
        <div class="col">
    <div class="card">
      <img src="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20231012_72%2F1697089726606AX0mo_JPEG%2Fmovie_image.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">극장판 우당탕탕 은하안정단: 진정한용기</h5>
        <p class="card-text">
        <% 
        Map<String, String> movie7 = movieList.get(7);%>
        랭킹: <%= movie7.get("rank") %><br>
        누적관객수: <%= movie7.get("audiAcc") %><br>
		<%= movie7.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
</div>
<%@ include file="../../layout/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
<style>
	.bdg,
	.card-body
	{
		background-color: black !important;
		color: #95a5a6 !important;
	}
	.card-img-top {
        height: 100%;
        object-fit: cover; /* Maintain aspect ratio and cover the entire container */
    }

    .card {
        margin-bottom: 0; /* Remove the bottom margin of the card */
    }

    .row-cols-1 {
        justify-content: center; /* Center-align the cards */
    }

</style>
</html>