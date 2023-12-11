<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</head>
<body>


<%@ include file="../layout/top.jsp" %>

<div id = "Box_Office">
	<%String memid = (String)session.getAttribute("id"); %>
	<%= memid %> 님 환영합니다
	<h3 class="bo" style="background-color:black;">
	박스 오피스
	</h3>
	<div class="swiper-slide swiper-slide-movie swiper-slide-active" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87554/87554_320.jpg" alt="서울의 봄" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age12">12</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/12.png" alt="12세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png" alt="imax"></i>
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87554" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '서울의 봄');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034317&amp;MOVIE_CD_GROUP=20034317" onclick="gaEventLog('PC_메인', '무비차트_예매하기','서울의 봄')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">서울의 봄</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png" alt="Golden Egg great"> 99%</span>
                                        <span>예매율 42.3%</span>
                                    </div>
                                </div>
                                
                                <div class="swiper-slide swiper-slide-movie swiper-slide-next" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87596/87596_320.jpg" alt="나폴레옹" onerror="errorImage(this)">
                                        <div class="movieAgeLimit_wrap">
                                           <!-- 영상물 등급 노출 변경 2022.08.24 -->
                                            <i class="cgvIcon etc age15">15</i>
                                            <!-- <img src="https://img.cgv.co.kr/R2014/images/common/flag/age/15.png" alt="15세"> -->
                                            <!-- -->
                                            
                                        
                                        </div>
                                        <div class="screenType_wrap">
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png" alt="imax"></i>
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/forDX_white.png" alt="forDX"></i>
                                            
                                            <i class="screenType"><img src="https://img.cgv.co.kr/R2014/images/common/logo/screenx_white.png" alt="screenx"></i>
                                            
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movies/detail-view/?midx=87596" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '나폴레옹');" class="btn_movieChart_detail">상세보기</a>
                                        
                                            <a href="/ticket/?MOVIE_CD=20034381&amp;MOVIE_CD_GROUP=20034381" onclick="gaEventLog('PC_메인', '무비차트_예매하기','나폴레옹')" class="btn_movieChart_ticketing">예매하기</a>
                                        
                                        
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">나폴레옹</strong>
                                        <span> <img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggood.png" alt="Golden Egg good"> 82%</span>
                                        <span>예매율 10.5%</span>
                                    </div>
                                </div>
	
</div>
<br>
<hr>
<%@ include file="../layout/footer.jsp" %>


</body>
<style>
element.style {
    width: 170.4px;
    margin-right: 32px;
}
.swiper-slide {
    flex-shrink: 0;
    width: 100%;
    height: 100%;
    position: relative;
    transition-property: transform;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
div {
    display: block;
}
.swiper {
    margin-left: auto;
    margin-right: auto;
    position: relative;
    overflow: hidden;
    list-style: none;
    padding: 0;
    z-index: 1;
}
body, input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 400;
}
body {
    line-height: 1;
    color: black;
}
:root {
    --swiper-navigation-size: 44px;
}
:root {
    --swiper-theme-color: #007aff;
}
    </style>
</html>