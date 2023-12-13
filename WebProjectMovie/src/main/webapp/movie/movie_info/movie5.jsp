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
            <h1>싱글 인 서울</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87718/87718_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 로맨스, 멜로, 코미디</p>
                <p><strong>개봉일:</strong> 2023-11-29</p>
                <p><strong>감독:</strong> 박범수</p>
                <p><strong>배우:</strong> 이동욱 ,  임수정 ,  이솜</p>
                <p><strong>평점:</strong> 7.84</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
“나한테 딱 맞는 사람은 나밖에 없어, 싱글이 답이다!”
혼자 걷기, 혼자 쉬기, 혼자 먹기, 혼자 살기…
혼자가 좋은 파워 인플루언서 ‘영호'(이동욱)

“사실 혼자인 사람은 없잖아요”
혼자 썸타기, 나 홀로 그린 라이트…
유능한 출판사 편집장이지만 혼자는 싫은 ‘현진’(임수정)

싱글 라이프를 담은 에세이 <싱글 인 더 시티> 시리즈의 작가와 편집자로 만난 ‘영호’와 ‘현진’.
생활 방식도 가치관도 서로 다른 두 사람은
책을 두고 사사건건 대립하면서도,
함께 보내는 시간이 나쁘지만은 않은데…?

서울, 혼자가 좋지만 연애는 하고 싶은
두 남녀의 싱글 라이프가 시작된다!
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/OquYKZLUJmY?si=6bbd2uJtSJGRFGGu" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
