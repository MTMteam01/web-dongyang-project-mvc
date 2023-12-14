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
      position: relative;
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
    .modal-content {
            background-color: #1a1a1a;
            color: white;
     }
     h4{
     	text-align:center;
     	color:#95a5a6;
     }
     

  </style>
</head>

<body>
<br>
	<h3 style="color:#99CCCC;text-align:center;">천만 관객 영화</h3>
  <div class="swiper mySwiper">
    <div class="swiper-wrapper" >
    <div class="swiper-slide" >
         <h4>국제시장</h4>
         
        <img src="../assets/poster08.jpg" />
        
      </div>
      <div class="swiper-slide" >
         <h4>아바타</h4>
         
        <img src="../assets/poster09.jpg" />
        
      </div>
      <div class="swiper-slide" >
         <h4>기생충</h4>
         
        <img src="../assets/poster10.jpg" />
        
      </div>
      <div class="swiper-slide" >
         <h4>명량</h4>
         
        <img src="../assets/poster07.jpg" />
        
      </div>
      <div class="swiper-slide" >
         <h4>침묵</h4>
         
        <img src="../assets/poster01.jpg" />
        
      </div>
      <div class="swiper-slide">
        <h4>신세계</h4>
        <img src="../assets/poster02.jpg" />
        
      </div>
      <div class="swiper-slide">
        <h4>마스터</h4>
        <img src="../assets/poster03.jpg" />
        
      </div>
      <div class="swiper-slide">
        <h4>마약왕</h4>
        <img src="../assets/poster04.jpg" />
        
      </div>
      <div class="swiper-slide">
        <h4>3일의 휴가</h4>
        <img src="../assets/poster05.jpg" />
        
      </div>
      <div class="swiper-slide">
        <h4>서울의 봄</h4>
        <img src="../assets/poster06.jpg" />
        
      </div>
    </div>
    <div class="swiper-pagination"></div>
  </div>
  
  
  
  
  
  
  

  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script type="text/javascript" src="../home/script.js"></script>
<br><br><br>
	<div class="a01">
		<h2 style="color:#99CCCC;">개봉 예정작</h2><br><br>
		<img alt="sow" src="../assets/sowox.jpg">
		<pre>
		                        <h5>               쏘우 X</h5>				
		 <span >소개</span>
		  1편의 게임을 마친 존 크레이머 일명 ‘직쏘’는 암을 치료하러 멕시코로 떠난다.
		 그러나 그곳에서 모든 희망은 절망이 되고 모든 것이 사기라는 것을 알게 되는데… 
		 이제 존의 차례이다. 이것은 복수가 아니다. ‘직쏘’의 세계로 초대받은 모든 사람은 
		 자신을 구원할 기회를 가진다. 그들의 게임이 끝나고, 직쏘의 게임이 시작된다.
		
		개봉		2023.12.13
		  등급		청소년 관람불가
		장르  	  	공포,스릴러
 	    러닝타임	        118분
		
		
		</pre>
		

	</div>
	<div class="a02">
	<iframe width="1200" height="500" src="https://www.youtube.com/embed/Z1_ymjF0znY?si=FrFNgaR7nPZlFx7s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
	</div>
<%@ include file="../layout/footer.jsp" %>

</body>
<style>
		.bdstyle {
			background-color: black !important;
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
		 .a01 {
            position: relative;
            text-align: center; /* Center the image horizontally */
        }

        .a01 img {
            width: 300px;
            height: 400px;
            display: inline-block; /* To center the image */
        }
        .a01 pre {
            display: inline-block; /* Display the pre tag as inline-block */
            vertical-align: top; /* Align the pre tag to the top of the container */
            margin-left: 10px;
            font-size: 18px;
         }
         .a01 h2{
         	position: left;
         
         }
         .a02{
         	text-align: center;
         
         }
         

</style>
</html>