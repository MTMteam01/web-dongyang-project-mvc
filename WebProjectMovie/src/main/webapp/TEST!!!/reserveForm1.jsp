<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reserve</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>

<%@ include file="../layout/top.jsp" %>

<%
    char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
%>

<div class="container mt-5">
    <!-- 영화 선택 -->
    <div class="mb-4">
        <h3 class="text-white">영화 선택</h3>
        <select class="form-select" aria-label="Default select example">
            <option selected>영화를 선택하세요</option>
            <option value="movie1">영화 1</option>
            <option value="movie2">영화 2</option>
            <option value="movie3">영화 3</option>
        </select>
    </div>

    <!-- 날짜 선택 -->
    <div class="mb-4">
        <h3 class="text-white">날짜 선택</h3>
        <input type="date" class="form-control">
    </div>

    <!-- 극장 선택 -->
    <div class="mb-4">
        <h3 class="text-white">극장 선택</h3>
        <select class="form-select" id="theaterSelect" aria-label="Default select example">
            <option selected>극장을 선택하세요</option>
            <option value="theater1">극장 1</option>
            <option value="theater2">극장 2</option>
            <option value="theater3">극장 3</option>
        </select>
    </div>
    <div class="mb-4">
        <h3 class="text-white">좌석 선택</h3><br>
        <!-- 여기에 좌석 선택을 위한 내용을 추가 -->
        <h3 style="text-align:center">SCREEN</h3>
        <div class="row row-cols-md-5 g-2" style="color:grey">
            <% for (int row = 1; row <= 8; row++) { %>
                <% for (int col = 1; col <= 5; col++) { %>
                    <div class="col">
                        <button type="button" class="btn btn-outline-dark mb-2 mint-text" onclick="openSeatModal('<%= alphabet[col - 1] + "" + row %>')"><%= alphabet[col - 1] + "" + row %></button>
                    </div>
                <% } %>
            <% } %>
        </div>
    </div>
</div>


<%@ include file="../layout/footer.jsp" %>

</body>
<style>
    body {
        background-color: black;
        font-family: Arial, sans-serif;
        color: #95a5a6 !important;
    }

    h1 {
        color: grey;
    }

    .nav-link,
    .text-muted {
        color: #95a5a6 !important; /* Mint color */
    }

    .nav-link:hover {
        color: #68c1a6 !important; /* Darker mint color when hovering */
    }

    .btn-outline-dark {
        width: 100%;
    }

    .mint-text {
        color: #68c1a6 !important; /* Mint color */
    }
</style>

</html>
