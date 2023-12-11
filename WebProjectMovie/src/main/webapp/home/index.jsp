<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="./home/indexScript.js"></script>
    
</head>
<body class="bdstyle">

<%@ include file="../layout/top.jsp" %>

<body>
    
    
    
	<div class="movie-container">
        <div class="video-container">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/-AZ7cnwn2YI?si=JcHN1kdYTJZ1FV5I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        </div>
        <div class="image-container">
            <img src="../assets/seoulSpring.jpg" alt="서울의 봄 찬란한 순간" style="object-fit: cover; height: 315px; width: 560px;">
        </div>
    </div>

    <!-- Movie 2 -->
    <div class="movie-container">
        <div class="video-container">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/RcT1oif6j5k?si=oFDKo4oexgedVolG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        </div>
        <div class="image-container">
            <img src="../assets/poster.png" alt="다른 영화 포스터" style="object-fit: cover; height: 315px; width: 560px;">
        </div>
    </div>
    
    
    
             <!-- 테이블 형태의 공지사항 작성 -->
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="mobile" style="width:55px; text-align:center;">번호</th>
                  <th style="text-align:center;">제목</th>
                  <th class="mobile" style="width:80px; text-align:center;">작성자</th>
                  <th class="mobile" style="width:120px; text-align:center;">날짜</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                 <!-- 글의 순서에 따라 번호를 붙이는 게시물 형식 만들기 -->
                  <td style="text-align: center;">3</td>
                  <td>신규 영화 시사회 참여자를 모집합니다.</td>
                  <td style"text-align: center;">운영자</td>
                  <td style="text-align: center;">2018-05-05</td>
                </tr>
                <tr>
                  <td style="text-align: center;">2</td>
                  <td>영화 예매 웹 사이트에 오신 것을 환영합니다.</td>
                  <td style="text-align: center;">운영자</td>
                  <td style="text-align: center;">2018-05-04</td>
                </tr>
                <tr>
                  <td style="text-align: center;">1</td>
                  <td>영화 예매 웹 사이트가 개설되었습니다.</td>
                  <td style="text-align: center;">운영자</td>
                  <td style="text-align: center;">2018-05-03</td>
                </tr>
              </tbody>
            </table>
<%@ include file="../layout/footer.jsp" %>

</body>
<style>
	.iframe{
	position:center;
	}
	.movie-container {
            display: flex;
            margin: 20px;
        }
	.image-container img {
            object-fit: cover;
            height: 250px; /* Adjust the height as needed */
            width: 450px; /* Adjust the width as needed */
        }
        .image-container {
            order: -1; /* Change the order to -1 for odd movie containers */
        }
        

        table {
            margin: 20px;
        }
	

</style>
</html>
