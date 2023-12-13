/**
 * 
 */
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
    // 여기에서 로그인 여부를 확인하고 처리

    var id = '<%= session.getAttribute("id") %>';

    if (id == null || id === '') {
        // 로그인되지 않은 경우 로그인 페이지로 리다이렉트
        response.sendRedirect("./longin/loginForm.jsp"); 
    } else {
        // 로그인된 경우 예매 처리 로직 실행
        const reservationInfo = document.getElementById('reservationInfo');
        reservationInfo.innerHTML = '예약 완료되었습니다. <br>영화: ' + selectedMovie + '<br>극장: ' + selectedTheater + '<br>날짜: ' + selectedDate + '<br>선택한 좌석: ' + selectedSeats.join(', ');
        
        $.ajax({
            type: 'POST',
            url: '/WebProjectMovie/ReservationServlet',
            data: {
                movieId: selectedMovie,
                theaterId: selectedTheater,
                date: selectedDate,
                seat: selectedSeats.join(','),
            },
            success: function(response) {
                // Handle the response from the servlet (e.g., show a success message)
                console.log(response);
            },
            error: function(error) {
                // Handle the error (e.g., show an error message)
                console.error(error);
            }
        });
        
        
        selectedSeats = [];
        updateSelectedSeats();
        // 여기에 추가적으로 서블릿 호출 등을 할 수 있습니다.
    }
}

function selectSeat(seats) {
    if (!selectedSeats.includes(seats)) {
        selectedSeats.push(seats);
        updateSelectedSeats();
    }
}