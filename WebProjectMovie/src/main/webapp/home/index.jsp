<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="./home/script.js"></script>
</head>
<body class="bdstyle">

<%@ include file="../layout/top.jsp" %>    
    
<head>
  <meta charset="utf-8" />
  <title>Main Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />


  <style>
    html,
    body {
      position: relative;
      height: 100%;
    }

    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .swiper {
      width: 100%;
      padding-top: 50px;
      padding-bottom: 50px;
    }

    .swiper-slide {
      background-position: center;
      background-size: cover;
      width: 300px;
      height: 400px;
    }

    .swiper-slide img {
      display: block;
      width: 100%;
    }
  </style>
</head>

<body>

  <div class="swiper mySwiper">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
        <img src="../assets/poster01.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="../assets/poster02.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="../assets/poster03.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="../assets/poster04.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="../assets/poster05.jpg" />
      </div>
      <div class="swiper-slide">
        <img src="../assets/poster06" />
      </div>
    </div>
    <div class="swiper-pagination"></div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>


  <script>
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
  </script>

<%@ include file="../layout/footer.jsp" %>

</body>
<style>
		.bdstyle {
			background-color: black !important;
		}
		.iframe{
			position:center;
		}
		.movie-container {
            display: flex;
            margin: 20px;
        }
		.image-container img {
            object-fit: cover;
            height: 250px; /* Adjust the height as needed */
            width: 450px; /* Adjust the width as needed */
        }
        .image-container {
            order: -1; /* Change the order to -1 for odd movie containers */
        }
        

        table {
            margin: 20px;
        }
        h1 {
			color: grey;
		}
        .nav-link,
        .text-muted {
            color: #95a5a6 !important; /* Mint color */
        }
		
        .nav-link:hover {
            color: #68c1a6 !important; /* Darker mint color when hovering */
        }
        .mv{
        	text-align: center;
        }
        .slideshow-container {
   			 max-width: 800px;
    		position: relative;
   			 margin: auto;
		}

		.mySlides {
   	 		display: none;
		}

/* Optional: You can add some styles for the video titles if needed */
		.mySlides h3 {
    		color: white;
    		text-align: center;
		}
	

</style>
</html>
