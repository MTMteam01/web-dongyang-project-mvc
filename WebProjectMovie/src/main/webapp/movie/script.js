document.addEventListener("DOMContentLoaded", function () {
    // Sample movie data
    const movies = [
        {
            title: "서울의 봄",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87554/87554_320.jpg",
            releaseDate: "2023-11-22",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87554"
        },
        {
            title: "나폴레옹",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87596/87596_320.jpg",
            releaseDate: "2023-12-06",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87596"
        },
        {
            title: "3일의 휴가",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87594/87594_320.jpg",
            releaseDate: "2023-12-06",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87594"
        },
        {
            title: "노량-죽음의 바다",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87907/87907_320.jpg",
            releaseDate: "2023-12-20",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87907"
        },
        {
            title: "더 퍼스트 슬램덩크",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86720/86720_320.jpg",
            releaseDate: "2023-01-04",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=86720"
        },
        {
            title: "프레디의 피자가게",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87550/87550_1000.jpg",
            releaseDate: "2023-11-15",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87550"
        },
        {
            title: "듄",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84945/84945_1000.jpg",
            releaseDate: "2023-12-06(재개봉)",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=84945"
        },
        {
            title: "나 혼자만 레벨업 프리뷰",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87755/87755_1000.jpg",
            releaseDate: "2023-12-13",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87755"
        },
        {
            title: "신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~ ",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87888/87888_1000.jpg",
            releaseDate: "2023-12-22",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87888"
        },
        {
            title: "괴물",
            poster: "https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87716/87716_1000.jpg",
            releaseDate: "2023-11-29",
            link: "http://www.cgv.co.kr/movies/detail-view/?midx=87716"
        },
        
        
        // Add more movies as needed
    ];

    const movieListSection = document.getElementById("movie-list");

    movies.forEach(movie => {
        const movieCard = document.createElement("div");
        movieCard.className = "movie-card";
        movieCard.innerHTML = `
            <a href="${movie.link}" class="movie-link">
                <img src="${movie.poster}" alt="${movie.title}">
                <h3>${movie.title}</h3>
                <p>${movie.releaseDate}</p>
            </a>
        `;
        movieListSection.appendChild(movieCard);
    });
});
