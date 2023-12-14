
   document.addEventListener("DOMContentLoaded", function () {
    var swiper = new Swiper(".mySwiper", {
      effect: "coverflow",
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: "auto",
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows: true,
      },
      pagination: {
        el: ".swiper-pagination",
      },
	});
    swiper.on('slideChange', function () {
        updateMovieDetails();
    });
    
    function updateMovieDetails() {
        var activeSlide = swiper.slides[swiper.activeIndex];
        var title = $(activeSlide).data("title");
        var director = $(activeSlide).data("director");
        var date = $(activeSlide).data("date");

        $("#movieTitle").text(title);
        $("#movieDirector").text("Director: " + director);
        $("#movieDate").text("Release Date: " + date);
    }
    updateMovieDetails();
    });