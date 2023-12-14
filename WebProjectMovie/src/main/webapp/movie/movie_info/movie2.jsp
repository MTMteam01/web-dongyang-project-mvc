<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>영화 상세페이지</title>
</head>
<body>
    <div class="container">
        <header>
            <h1>3일의 휴가</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87594/87594_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 환타지, 드라마</p>
                <p><strong>개봉일:</strong> 2023-11-22</p>
                <p><strong>감독:</strong> 육상효</p>
                <p><strong>배우:</strong> 김해숙, 신민아, 강기역, 황보라, 박명훈</p>
                <p><strong>평점:</strong> 8.47</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
            “따님은 어머님을 보거나 목소리를 들을 수 없고요.
그냥 따님의 행복한 기억만 담고 오시면 됩니다."

죽은 지 3년째 되는 날,
‘복자’(김해숙)는 하늘에서 3일간의 휴가를 받아
규칙 안내를 맡은 신입 ‘가이드’(강기영)와 함께 지상에 내려온다.
미국 명문대학교 교수인 자랑스러운 딸을 볼 생각에 설레던 마음도 잠시,
돌연 자신이 살던 시골집으로 돌아와 백반 장사를 시작한 ‘진주’(신민아)의 모습에 당황한다.
속 타는 엄마의 마음도 모르는 ‘진주’는 자신을 찾아온 단짝 ‘미진’(황보라)과 엄마의 레시피를 찾아가고,
낯익은 요리를 보자 서로의 추억이 되살아나는데…
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/yAHvmCLiICA?si=MUkUv_8YokASQH06" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            
		</section>
    </div>
</body>
<style>
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

header {
    text-align: center;
}

.movie-details {
    display: flex;
    margin-top: 20px;
}

.movie-details img {
    max-width: 200px;
    margin-right: 20px;
}

.details {
    flex: 1;
}

.synopsis, .reviews {
    margin-top: 20px;
}

.review {
    border: 1px solid #ddd;
    padding: 10px;
    margin-bottom: 10px;
}
</style>
</html>
