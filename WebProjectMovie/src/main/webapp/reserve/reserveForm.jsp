<%@page import="test.ReserveDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reserve</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
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
    <h1>영화 예매</h1>
    <form action="/WebProjectMovie/ReservationServlet" method="post">
        <!-- 영화 선택 -->
        <div class="mb-3">
            <label for="movieSelect" class="form-label">영화 선택</label>
            <select class="form-select" id="movieSelect" name="movieId" required onchange="selectedMovie = this.options[this.selectedIndex].text;">
        		<option selected disabled>영화를 선택하세요</option>
        		<option value="movie1">영화 1</option>
        		<option value="movie2">영화 2</option>
        		<option value="movie3">영화 3</option>
    </select>
        </div>

        <!-- 날짜 선택 -->
        <div class="mb-3">
    		<label for="datePicker" class="form-label">날짜 선택</label>
    		<input type="date" class="form-control" id="datePicker" name="date" required onchange="selectedDate = this.value;">
		</div>

        <!-- 극장 선택 -->
        <div class="mb-3">
    		<label for="theaterSelect" class="form-label">극장 선택</label>
    		<select class="form-select" id="theaterSelect" name="theaterId" required onchange="selectedTheater = this.options[this.selectedIndex].text;">
        		<option selected disabled>극장을 선택하세요</option>
        		<option value="theater1">극장 1</option>
        		<option value="theater2">극장 2</option>
        		<option value="theater3">극장 3</option>
    		</select>
		</div>

        <!-- 좌석 선택 -->
        <div class="mb-3">
            <label class="form-label">좌석 선택</label>
            <h3 style="text-align:center">SCREEN</h3>
            <div class="row row-cols-md-5 g-2" style="color:grey">
                <% for (int row = 1; row <= 8; row++) { %>
                	<% for (int col = 1; col <= 5; col++) { %>
                <c:forEach var="seat" items="${seats}">
                    <div class="col">
                       
                    	<button type="button"  class="btn btn-outline-dark mb-2 mint-text" onclick="openSeatModal('<%= alphabet[col - 1] + "" + row %>')"><%= alphabet[col - 1] + "" + row %></button>
                    </div>
                </c:forEach>
               <% } %>
            <% } %>
            </div>
        </div>

        <!-- 예약 정보 전송 -->
      
    </form>
</div>

<div class="container mt-3">
    <div class="d-flex justify-content-center">
        <div id="selectedSeatsInfo" style="display: none;"></div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="reservationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">예약 확인 내역</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p id="reservationInfo"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<!-- "예매 완료" Button centered -->

	<div class="d-flex justify-content-center mt-3">
    	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reservationModal" onclick="completeReservation()">예매 완료</button>
	</div>


<script>
let selectedSeats = [];
let selectedMovie = '';
let selectedTheater = '';
let selectedDate = '';

function openSeatModal(seat) {
    if (!selectedSeats.includes(seat)) {
        selectedSeats.push(seat);
        updateSelectedSeats();
    }
}

function updateSelectedSeats() {
    const selectedSeatsInfo = document.getElementById('selectedSeatsInfo');
    selectedSeatsInfo.style.display = 'block';
    selectedSeatsInfo.innerHTML = '선택한 좌석: ' + selectedSeats.join(', ');
}

function completeReservation() {
    const reservationInfo = document.getElementById('reservationInfo');
    reservationInfo.innerHTML = '예약 완료되었습니다. <br>영화: ' + selectedMovie + '<br>극장: ' + selectedTheater + '<br>날짜: ' + selectedDate + '<br>선택한 좌석: ' + selectedSeats.join(', ');
    selectedSeats = [];
    updateSelectedSeats();
}

function selectSeat(seats) {
    if (!selectedSeats.includes(seats)) {
        selectedSeats.push(seats);
        updateSelectedSeats();
    }
}
</script>

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
