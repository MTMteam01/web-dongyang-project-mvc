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
        <h5 class="card-title">
        <% 
        Map<String, String> movie0 = movieList.get(0);%>
        <%= movie0.get("movieNm") %></h5>
        <p class="card-text">
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
        <h5 class="card-title">       
        <% 
        Map<String, String> movie1 = movieList.get(1);%>
        <%= movie1.get("movieNm") %></h5>
        <p class="card-text">
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
        <h5 class="card-title">
        <% 
        Map<String, String> movie2 = movieList.get(2);%>
        <%= movie2.get("movieNm") %></h5>
        <p class="card-text">        

        랭킹: <%= movie2.get("rank") %><br>
        누적관객수: <%= movie2.get("audiAcc") %><br>
		<%= movie2.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87716/87716_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">
        <% 
        Map<String, String> movie3 = movieList.get(3);%>
        <%= movie3.get("movieNm") %>
        </h5>
        <p class="card-text">
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
        <h5 class="card-title">
        <% 
        Map<String, String> movie4 = movieList.get(4);%>
        <%= movie4.get("movieNm") %></h5>
        <p class="card-text">        
        랭킹: <%= movie4.get("rank") %><br>
        누적관객수: <%= movie4.get("audiAcc") %><br>
		<%= movie4.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">
        <% 
        Map<String, String> movie5 = movieList.get(5);%>
        <%= movie5.get("movieNm") %></h5>
        <p class="card-text">
        랭킹: <%= movie5.get("rank") %><br>
        누적관객수: <%= movie5.get("audiAcc") %><br>
		<%= movie5.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
      <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87753/87753_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">
        <% 
        Map<String, String> movie6 = movieList.get(6);%>
        <%= movie6.get("movieNm") %></h5>
        <p class="card-text">
        
        랭킹: <%= movie6.get("rank") %><br>
        누적관객수: <%= movie6.get("audiAcc") %><br>
		<%= movie6.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
        <div class="col">
    <div class="card">
      <img src="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20231103_182%2F1698995150444NElMy_JPEG%2Fmovie_image.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">
        <% 
        Map<String, String> movie7 = movieList.get(7);%>
        <%= movie7.get("movieNm") %></h5>
        <p class="card-text">
        
        랭킹: <%= movie7.get("rank") %><br>
        누적관객수: <%= movie7.get("audiAcc") %><br>
		<%= movie7.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20231026_9%2F16983044100188P1Ff_JPEG%2Fmovie_image.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">
        <% 
        Map<String, String> movie8 = movieList.get(8);%>
        <%= movie8.get("movieNm") %></h5>
        <p class="card-text">
        
        랭킹: <%= movie8.get("rank") %><br>
        누적관객수: <%= movie8.get("audiAcc") %><br>
		<%= movie8.get("openDt")%> 개봉<br></p>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card">
      <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87550/87550_320.jpg" class="card-img-top img-fluid" alt="...">
      <div class="card-body">
        <h5 class="card-title">
        <% 
        Map<String, String> movie9 = movieList.get(9);%>
        <%= movie9.get("movieNm") %></h5>
        <p class="card-text">
        
        랭킹: <%= movie9.get("rank") %><br>
        누적관객수: <%= movie9.get("audiAcc") %><br>
		<%= movie9.get("openDt")%> 개봉<br></p>
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