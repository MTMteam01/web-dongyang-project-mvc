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
            <h1>노량 : 죽음의 바다</h1>
        </header>
        <section class="movie-details">
            <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg" alt="영화 포스터">
            <div class="details">
                <h2>영화 정보</h2>
                <p><strong>장르:</strong> 액션, 드라마</p>
                <p><strong>개봉일:</strong> 2023-12-20</p>
                <p><strong>감독:</strong> 김한민</p>
                <p><strong>배우:</strong> 
김윤석 ,  백윤식 ,  정재영 ,  허준호 ,  김성규 ,  이규형 ,  이무생 ,  최덕문 ,  안보현 ,  박명훈 ,  박훈 ,  문정희</p>
                <p><strong>평점:</strong> </p>
            </div>
        </section>
        <section class="synopsis">
            <h2>줄거리</h2>
            <p>
임진왜란 발발로부터 7년이 지난 1598년 12월.
이순신(김윤석)은 왜군의 수장이던 도요토미 히데요시가 갑작스럽게 사망한 뒤 왜군들이 조선에서 황급히 퇴각하려 한다는 것을 알게 된다.
“절대 이렇게 전쟁을 끝내서는 안 된다”
왜군을 완벽하게 섬멸하는 것이 이 전쟁을 올바르게 끝나는 것이라 생각한 이순신은
명나라와 조명연합함대를 꾸려 왜군의 퇴각로를 막고 적들을 섬멸하기로 결심한다.
하지만 왜군의 뇌물 공세에 넘어간 명나라 도독 진린(정재영)은 왜군에게 퇴로를 열어주려 하고,
설상가상으로 왜군 수장인 시마즈(백윤식)의 살마군까지 왜군의 퇴각을 돕기 위해 노량으로 향하는데…
2023년 12월, 모두를 압도할 최후의 전투가 시작된다!
			</p>
        </section>
        <section class="links">
            <h2>예고편</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/gXEpZpnImY8?si=tDp2U2C_pKeucPXa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
