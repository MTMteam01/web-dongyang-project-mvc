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
            <h1>영화 제목</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87554/87554_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 드라마</p>
                <p><strong>개봉일:</strong> 2023-11-22</p>
                <p><strong>감독:</strong> 김성수</p>
                <p><strong>배우:</strong> 황정민 ,  정우성 ,  이성민 ,  박해준 ,  김성균</p>
                <p><strong>평점:</strong> 9.57</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
            1979년 12월 12일, 수도 서울 군사반란 발생
			그날, 대한민국의 운명이 바뀌었다
			
			대한민국을 뒤흔든 10월 26일 이후,
			서울에 새로운 바람이 불어온 것도 잠시
			12월 12일, 보안사령관 전두광이 반란을 일으키고
			군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다.
			 
			권력에 눈이 먼 전두광의 반란군과
			이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이,
			일촉즉발의 9시간이 흘러가는데…
			  
			목숨을 건 두 세력의 팽팽한 대립
			오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>

			<iframe width="560" height="315" src="https://www.youtube.com/embed/-AZ7cnwn2YI?si=3HP0P5AGpRTSijEb" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
