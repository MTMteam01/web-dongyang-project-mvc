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
	<div id="container">
        <button id="btn-modal">모달 창 열기 버튼</button>
        <div id="lorem-ipsum"></div>
        <button>열기</button>
    </div>
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>모달</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                <p>가나다라마바사 아자차카타파하</p>
                <p>가나다라마바사 아자차카타파하</p>
                <p>가나다라마바사 아자차카타파하</p>
                <p>가나다라마바사 아자차카타파하</p>
                
            </div>
        </div>
    </div>
    <script>

    전체 자바스크립트 코드는 다음과 같습니다.

    const loremIpsum = document.getElementById("lorem-ipsum")
    fetch("https://baconipsum.com/api/?type=all-meat&paras=200&format=html")
        .then(response => response.text())
        .then(result => loremIpsum.innerHTML = result)
    const modal = document.getElementById("modal")
    function modalOn() {
        modal.style.display = "flex"
    }
    function isModalOn() {
        return modal.style.display === "flex"
    }
    function modalOff() {
        modal.style.display = "none"
    }
    const btnModal = document.getElementById("btn-modal")
    btnModal.addEventListener("click", e => {
        modalOn()
    })
    const closeBtn = modal.querySelector(".close-area")
    closeBtn.addEventListener("click", e => {
        modalOff()
    })
    modal.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modalOff()
        }
    })
    window.addEventListener("keyup", e => {
        if(isModalOn() && e.key === "Escape") {
            modalOff()
        }
    })
    </script>
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
        #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        #modal .modal-window {
            background: rgba( 69, 139, 197, 0.70 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 400px;
            height: 500px;
            position: relative;
            top: -100px;
            padding: 10px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: white;
            
        }
        #modal .title h2 {
            display: inline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
</style>

</html>
