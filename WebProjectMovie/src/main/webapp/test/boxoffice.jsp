<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>박스오피스</title>
    <style>
        #boxOfficeContainer {
            position: relative;
            width: 100%;
            overflow: hidden;
        }

        .boxOfficeList {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }

        .boxOfficeItem {
            width: 200px;
            margin: 0 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        #prevBtn, #nextBtn {
            cursor: pointer;
            font-size: 24px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
        }

        #prevBtn {
            left: 10px;
        }

        #nextBtn {
            right: 10px;
        }
    </style>
</head>
<body>

<div id="boxOfficeContainer">
    <div class="boxOfficeList" id="boxOfficeList">
        <!-- 영화 목록은 JavaScript에서 동적으로 추가됩니다. -->
    </div>
    <div id="prevBtn">&lt;</div>
    <div id="nextBtn">&gt;</div>
</div>

<script>
    // 가상의 영화 데이터
    const movies = [
        "영화1", "영화2", "영화3", "영화4", "영화5",
        "영화6", "영화7", "영화8", "영화9", "영화10",
        "영화11", "영화12", "영화13", "영화14", "영화15",
        "영화16", "영화17", "영화18", "영화19", "영화20",
        // 추가적인 영화 데이터를 필요에 따라 추가할 수 있습니다.
    ];

    const boxOfficeList = document.getElementById('boxOfficeList');
    const prevBtn = document.getElementById('prevBtn');
    const nextBtn = document.getElementById('nextBtn');

    let currentIndex = 0;

    function showMovies() {
        boxOfficeList.innerHTML = '';
        for (let i = currentIndex; i < currentIndex + 5; i++) {
            if (movies[i]) {
                const movieItem = document.createElement('div');
                movieItem.classList.add('boxOfficeItem');
                movieItem.textContent = movies[i];
                boxOfficeList.appendChild(movieItem);
            }
        }
    }

    function showNextMovies() {
        if (currentIndex + 5 < movies.length) {
            currentIndex += 5;
            showMovies();
        }
    }

    function showPrevMovies() {
        if (currentIndex - 5 >= 0) {
            currentIndex -= 5;
            showMovies();
        }
    }

    // 초기 영화 목록 표시
    showMovies();

    // 다음 버튼 클릭 시 이벤트 등록
    nextBtn.addEventListener('click', showNextMovies);

    // 이전 버튼 클릭 시 이벤트 등록
    prevBtn.addEventListener('click', showPrevMovies);
</script>

</body>
</html>
