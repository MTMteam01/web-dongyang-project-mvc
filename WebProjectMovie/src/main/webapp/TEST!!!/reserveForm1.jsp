<%@page import="java.util.List"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="test.ReserveDAO"%>
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

<div class="container mt-5">
    <h1>영화 예매</h1>

    <!-- 예매 양식 -->
</div>
<div id="selectedSeatsInfo" style="display: none;"></div>
<!-- Modal -->
<div class="modal fade" id="reservationModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">예약 완료</h5>
                <button type="button"  class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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

<button type="button" class="btn btn-primary" style="justify-content:center" onclick="completeReservation()" >예매 완료</button>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha384-r5k4U0tD1NDbozKjHl3PmrC3UppCrYxnq9i2YA6qrqEkN9Nfnzg1Jp6cuBoyJTeU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<script>
let selectedSeats = [];

function openSeatModal(seat) {
    if (!selectedSeats.includes(seat)) {
        selectedSeats.push(seat);
        updateSelectedSeats();
    }
    $('#reservationModal').modal('show');
}

function updateSelectedSeats() {
    const selectedSeatsInfo = document.getElementById('selectedSeatsInfo');
    selectedSeatsInfo.style.display = 'block';
    selectedSeatsInfo.innerHTML = '선택한 좌석: ' + selectedSeats.join(', ');
}

function completeReservation() {
    alert('예약 완료되었습니다. 선택한 좌석: ' + selectedSeats.join(', '));
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
