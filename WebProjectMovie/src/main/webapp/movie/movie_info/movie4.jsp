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
            <h1>괴물</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87716/87716_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 드라마, 미스터리</p>
                <p><strong>개봉일:</strong> 2023-11-29</p>
                <p><strong>감독:</strong> 고레에다 히로카즈</p>
                <p><strong>배우:</strong> 안도 사쿠라 ,  나가야마 에이타 ,  쿠로카와 소야 ,  히이라기 히나타 ,  타카하타 미츠키 ,  카쿠타 아키히로 ,  나카무라 시도 ,  다나카 유코</p>
                <p><strong>평점:</strong> 9.01</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
“우리 동네에는 괴물이 산다”
싱글맘 사오리(안도 사쿠라)는 아들 미나토(쿠로카와 소야)의 행동에서 이상 기운을 감지한다.
용기를 내 찾아간 학교에서 상담을 진행한 날 이후
선생님과 학생들의 분위기가 심상치 않게 흐르기 시작하고.
 
“괴물은 누구인가?”
한편 사오리는 친구들로부터 따돌림을 당하고 있는 미나토의 친구 요리(히이라기 히나타)의 존재를 알게 되고
자신이 아는 아들의 모습과 사람들이 아는 아들의 모습이 다르다는 사실을 어렴풋이 깨닫는데…
태풍이 몰아치던 어느 날, 아무도 몰랐던 진실이 드러난다.
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/BHaPyxWrP_g?si=HIBSr1p0im7XwWi-" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
