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
            <h1>프레디의 피자가게</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87550/87550_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 호러. 스릴러</p>
                <p><strong>개봉일:</strong> 2023-11-15</p>
                <p><strong>감독:</strong> 에마 태미</p>
                <p><strong>배우:</strong> 조쉬 허처슨 ,  엘리자베스 라일 ,  캣 코너 스털링 ,  파이퍼 루비오 ,  매리 스튜어트 매스터슨 ,  매튜 릴라드</p>
                <p><strong>평점:</strong> 6.55</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
“환상적이고 즐거움이 넘치는 프레디의 피자가게에 오신 걸 환영합니다”
80년대에 아이들이 실종되고 폐업한지 오래된 프레디의 피자가게
그곳의 야간 경비 알바를 하게 된 ‘마이크'는
캄캄한 어둠만이 존재하는 줄 알았던 피자가게에서
살아 움직이는 피자가게 마스코트 '프레디와 친구들’을 목격한다
어딘가 기괴하고 섬뜩한 프레디와 친구들이 실체를 드러내기 시작하는데…
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/RaGNLFbVfLw?si=bBPCDJUOUvhs167z" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            
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
