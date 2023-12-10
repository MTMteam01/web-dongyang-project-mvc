<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<div id="container">
        <div class="movieContainer">
            <label for="movie">
                Pick a Movie :
            </label>
            <select name="pickMovie" id="movie">
                <option class="price" value="10">Avengers:Endgame ($10)</option>
                <option class="price" value="12">Joker ($12)</option>
                <option class="price" value="8">Toy Story 4 ($8)</option>
                <option class="price" value="9">The Lion King ($9)</option>
            </select>
        </div>
        <ul class="showcase">
            <li>
                <div class="availableSeat"></div>
                <small class="small">Available Seat</small>
            </li>
            <li>
                <div class="selectedSeatIcon"></div>
                <small class="small">Selected Seat</small>
            </li>
            <li>
                <div class="occupiedSeat"></div>
                <small class="small">Occupied Seat</small>
            </li>
        </ul>

        <div class="seatContainer">
            <div class="screen"></div>
            <div class="row">
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
            </div>

            <div class="row">
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="occupiedSeat"></span>
                <span class="occupiedSeat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
            </div>

            <div class="row">
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="occupiedSeat"></span>
                <span class="seat"></span>
            </div>

            <div class="row">
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="occupiedSeat"></span>
                <span class="occupiedSeat"></span>
            </div>

            <div class="row">
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
            </div>

            <div class="row">
                <span class="seat"></span>
                <span class="occupiedSeat"></span>
                <span class="occupiedSeat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="seat"></span>
                <span class="occupiedSeat"></span>
                <span class="seat"></span>
            </div>

        </div>

        <p class="text">You have selected <span id="count">0</span> seats for a price of $ <span id="costs">0</span></p>




    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () =>{

const seatContainer = document.querySelector('.seatContainer');

const movie = document.getElementById('movie'); // 선택할 영화
let moviePrice = Number(movie.value); // 영화과격 

let count = document.querySelector('#count'); // 인원수
let costs = document.querySelector('#costs'); // 가격

// 선택한 좌석수 텍스트 변경해주기

function countSeatPrice(){
    const selectedSeatCount = document.querySelectorAll('.selectedSeat').length;

    count.textContent = selectedSeatCount;
    costs.textContent = selectedSeatCount * moviePrice;
    
}


//좌석 클릭했을때

seatContainer.addEventListener('click', (e) => {

    if(e.target.className === 'seat'){
        e.target.className = 'selectedSeat';
    } else if(e.target.className === 'selectedSeat'){
        e.target.className = 'seat';
    }

    countSeatPrice();
})

// 영화 변경할때

movie.addEventListener('change', (e) => {

    moviePrice = Number(e.target.value);

    countSeatPrice()
    
})




})
    </script>
</body>
</html>