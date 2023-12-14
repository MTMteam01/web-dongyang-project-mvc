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
            <h1>그대들은 어떻게 살 것인가</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87433/87433_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 애니메이션</p>
                <p><strong>개봉일:</strong> 2023-10-25</p>
                <p><strong>감독:</strong> 미야자키 하야오</p>
                <p><strong>배우:</strong> 산토키 소마 ,  스다 마사키 ,  시바사키 코우 ,  아이묭 ,  기무라 요시노 ,  기무라 타쿠야</p>
                <p><strong>평점:</strong> 6.94</p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
화재로 어머니를 잃은 11살 소년 ‘마히토’는 아버지와 함께 어머니의 고향으로 간다.
어머니에 대한 그리움과 새로운 보금자리에 적응하느라 힘들어하던 ‘마히토’ 앞에 정체를 알 수 없는 왜가리 한 마리가 나타나고,
저택에서 일하는 일곱 할멈으로부터 왜가리가 살고 있는 탑에 대한 신비로운 이야기를 듣게 된다.
그러던 어느 날, ‘마히토’는 사라져버린 새엄마 ‘나츠코’를 찾기 위해 탑으로 들어가고,
왜가리가 안내하는 대로 이세계(異世界)의 문을 통과하는데…!
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/RURusloLi-s?si=sBcmNwJiJ80FgtqY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
