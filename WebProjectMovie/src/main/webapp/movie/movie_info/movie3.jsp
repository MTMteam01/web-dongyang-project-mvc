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
            <h1>나폴레옹</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87596/87596_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 전쟁</p>
                <p><strong>개봉일:</strong> 2023-12-06</p>
                <p><strong>감독:</strong> 리들리 스콧</p>
                <p><strong>배우:</strong> 호아킨 피닉스 ,  바네사 커비</p>
                <p><strong>평점:</strong> 7.15</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
            스스로 황제가 된 영웅!
1793년 혁명의 불꽃이 프랑스 전역을 밝히기 시작한다.
코르시카 출신의 장교 '나폴레옹'(호아킨 피닉스)은
혼란스러운 상황 속 국가를 위해 맞서며 영웅으로 떠오른다.

한편, 사교 파티에서 영웅 ‘나폴레옹’을 만난 '조제핀'(바네사 커비)은
자신의 운명을 바꾸기 위해 ‘나폴레옹’을 선택하고
‘나폴레옹’은 마침내 스스로 황제의 자리에 오르게 된다.

하지만, ‘조제핀’은 계속해서 ‘나폴레옹’을 흔들고,
‘나폴레옹’의 야망은 ‘조제핀’과 끝없이 충돌하는데…

세상을 정복한 영웅 아무것도 갖지 못한 황제,
‘나폴레옹’의 대서사가 펼쳐진다!
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/ROl3dZE5rk4?si=7ZFZaVdbQGLpg9JN" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
