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
            <h1>스노우 폭스: 썰매개가 될거야!</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87562/87562_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 애니메이션</p>
                <p><strong>개봉일:</strong> 2023-11-23</p>
                <p><strong>감독:</strong> 아론 우들리</p>
                <p><strong>배우:</strong> 제임스 프랭코 ,  제레미 레너 ,  로리 홀든 ,  알렉 볼드윈</p>
                <p><strong>평점:</strong> 8.32</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
“난 멋진 썰매개가 되고 싶었을 뿐인데~ 북극을 구하라고??”
해피 꽁꽁 어드벤처가 시작된다!

썰매개가 꿈인 북극여우, 스위프티.
어느날, 썰매개들을 대신해 물건을 배달하러 간 곳에서 북극을 파괴하려는 바다코끼리 일당을 만난다.
스위프티는 북극곰, 순록, 붉은여우 등 친구들과 함께 악당을 막고 위험에 빠진 북극을 구해야만 하는데. . .
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/Ecsry7Ffv8Y?si=PgoLn15QKRJudnPR" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
