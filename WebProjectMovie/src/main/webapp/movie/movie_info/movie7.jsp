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
            <h1>쏘우 X</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87753/87753_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 호러</p>
                <p><strong>개봉일:</strong> 2023-12-13</p>
                <p><strong>감독:</strong> 케빈 그루터트</p>
                <p><strong>배우:</strong> 토빈 벨 ,  쇼니 스미스</p>
                <p><strong>평점:</strong> 8.77</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
1편의 게임을 마친 존 크레이머 일명 ‘직쏘’는
암을 치료하러 멕시코로 떠난다.

그러나 그곳에서 모든 희망은 절망이 되고
모든 것이 사기라는 것을 알게 되는데…

이제 존의 차례이다.
이것은 복수가 아니다.
‘직쏘’의 세계로 초대받은 모든 사람은
자신을 구원할 기회를 가진다.

그들의 게임이 끝나고,
직쏘의 게임이 시작된다.
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
           <iframe width="560" height="315" src="https://www.youtube.com/embed/Z1_ymjF0znY?si=TeC4UfeRMb3-GL6j" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            
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
