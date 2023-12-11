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
						<!-- main-movie-list -->
					<div class="main-movie-list">
						<ol class="list">
							<!-- 3개의 list를  loop 한다-->
							<!-- 박스오피스 시작 -->
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

										<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
										<li name="li_boxoRankList"  class="first">
											<a href="javascript:gfn_moveDetail('23081200')" class="movie-list-info" title="영화상세 보기">
												<div class="screen-type2">
													<p><img src="/static/pc/images/common/btn/mov_top_tag_db.png" alt="dolby"></p>
													<p><img src="/static/pc/images/common/btn/mov_top_tag_atmos.png" alt="atmos"></p>
													</div>
												<p class="rank">1<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2023/11/22/aM1zeiVGySigNObspcjcoH9NaebEPa2f_420.jpg" alt="서울의 봄" class="poster" onerror="noImg(this, 'main');"/>
							                      	<div class="wrap">
													<div class="summary">
														1979년 12월 12일, 수도 서울 군사반란 발생<br>그날, 대한민국의 운명이 바뀌었다<br><br>대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시<br>12월 12일, 보안사령관 전두광이 반란을 일으키고<br>군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다.<br> <br>권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한<br>진압군 사이, 일촉즉발의 9시간이 흘러가는데&hellip;<br>  <br>목숨을 건 두 세력의 팽팽한 대립<br>오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!<br></div>
													<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">9.6<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="23081200">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														2.2k
														</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="javascript:moveBokdPage('23081200');" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

										<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
										<li name="li_boxoRankList"  class="">
											<a href="javascript:gfn_moveDetail('23081300')" class="movie-list-info" title="영화상세 보기">
												<div class="screen-type2">
													</div>
												<p class="rank">2<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2023/11/01/bgAwV6TVs8nZAlfFdCiPsJySiHlp0vRC_420.jpg" alt="3일의 휴가" class="poster" onerror="noImg(this, 'main');"/>
							                      	<div class="wrap">
													<div class="summary">
														&ldquo;따님은 어머님을 보거나 목소리를 들을 수 없고요.<br>그냥 따님의 행복한 기억만 담고 오시면 됩니다."    <br><br>죽은 지 3년째 되는 날, &lsquo;복자&rsquo;(김해숙)는 하늘에서 3일간의 휴가를 받아<br>규칙 안내를 맡은 신입 &lsquo;가이드&rsquo;(강기영)와 함께 지상에 내려온다.<br>미국 명문대학교 교수인 자랑스러운 딸을 볼 생각에 설레던 마음도 잠시,<br>돌연 자신이 살던 시골집으로 돌아와 백반 장사를 시작한 &lsquo;진주&rsquo;(신민아)의 모습에 당황한다.<br>속 타는 엄마의 마음도 모르는 &lsquo;진주&rsquo;는 자신을 찾아온 단짝 &lsquo;미진&rsquo;(황보라)과<br>엄마의 레시피를 찾아가고, 낯익은 요리를 보자 서로의 추억이 되살아나는데&hellip;</div>
													<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">8.5<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="23081300">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														635</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="javascript:moveBokdPage('23081300');" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

										<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
										<li name="li_boxoRankList"  class="">
											<a href="javascript:gfn_moveDetail('23082100')" class="movie-list-info" title="영화상세 보기">
												<div class="screen-type2">
													<p><img src="/static/pc/images/common/btn/mov_top_tag_db.png" alt="dolby"></p>
													<p><img src="/static/pc/images/common/btn/mov_top_tag_atmos.png" alt="atmos"></p>
													</div>
												<p class="rank">3<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2023/12/06/lRGj0WtpTgMRETIlMxrzNCFbgK583Hof_420.jpg" alt="나폴레옹" class="poster" onerror="noImg(this, 'main');"/>
							                      	<div class="wrap">
													<div class="summary">
														스스로 황제가 된 영웅!<br>1793년 혁명의 불꽃이 프랑스 전역을 밝히기 시작한다.<br>코르시카 출신의 장교 '나폴레옹'(호아킨 피닉스)은<br>혼란스러운 상황 속 국가를 위해 맞서며 영웅으로 떠오른다.<br><br>한편, 사교 파티에서 영웅 &lsquo;나폴레옹&rsquo;을 만난 '조제핀'(바네사 커비)은<br>자신의 운명을 바꾸기 위해 &lsquo;나폴레옹&rsquo;을 선택하고<br>&lsquo;나폴레옹&rsquo;은 마침내 스스로 황제의 자리에 오르게 된다.<br><br>하지만, &lsquo;조제핀&rsquo;은 계속해서 &lsquo;나폴레옹&rsquo;을 흔들고,<br>&lsquo;나폴레옹&rsquo;의 야망은 &lsquo;조제핀&rsquo;과 끝없이 충돌하는데&hellip;<br><br>세상을 정복한 영웅 아무것도 갖지 못한 황제,<br>&lsquo;나폴레옹&rsquo;의 대서사가 펼쳐진다!</div>
													<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">7.9<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="23082100">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														897</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="javascript:moveBokdPage('23082100');" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

										<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
										<li name="li_boxoRankList"  class="">
											<a href="javascript:gfn_moveDetail('23090800')" class="movie-list-info" title="영화상세 보기">
												<div class="screen-type2">
													</div>
												<p class="rank">4<span class="ir">위</span></p>
												<!-- to 개발 : alt 값에 영화 제목 출력 -->
										      	<img src="https://img.megabox.co.kr/SharedImg/2023/11/27/e4wcwq3yUKrKMuYtZMkTqQromF01DbWP_420.jpg" alt="말하고 싶은 비밀" class="poster" onerror="noImg(this, 'main');"/>
							                      	<div class="wrap">
													<div class="summary">
														어느 날 갑자기 고백 사고!?<br>마음이 잘못 배달되었다!<br>&lsquo;노조미&rsquo;는 자신의 책상 서랍 속 &lsquo;좋아해&rsquo;라는 쪽지를 발견한다.<br>쪽지의 주인공은 바로 학교 최고 인기남 &lsquo;세토야마&rsquo;!<br><br>전교생이 좋아하는 이상형으로부터 고백받은 설렘도 잠시,<br>고백의 주인이 사실은 자신이 아니었음을 알고 망연자실한다.<br><br>엇갈릴수록 점점 커져가는 너를 향한 마음,<br>내일은 너에게 말할 수 있을까?</div>
													<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
													<div class="score">
														<div class="preview">
															<p class="tit">관람평</p>
															<p class="number">0<span class="ir">점</span></p>
														</div>
													</div>
												</div>
											</a>
											<div class="btn-util">
                                                <button type="button" class="button btn-like" rpst-movie-no="23090800">
													<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
														271</button>
                                                <div class="case">
                                                    <!-- 개봉 예매가능 기본-->
                                                            <a href="javascript:moveBokdPage('23090800');" class="button gblue" title="영화 예매하기">예매</a>
                                                        </div>
                                                </div>
										</li>
									<!-- 박스오피스 종료 -->
								</ol>
					</div>
					<!--// main-movie-list -->
	
<br>
<hr>
<%@ include file="../layout/footer.jsp" %>


</body>
<style>
.main-movie-list {
}
* {
    box-sizing: border-box;
}
/* 사용자 에이전트 스타일시트 */
div {
    display: block;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
html {
    -webkit-text-size-adjust: 100%;
}
.main-movie-list > ol {
    display: block;
}
ol, ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
* {
    box-sizing: border-box;
}
/* 사용자 에이전트 스타일시트 */
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
body {
    overflow: auto;
    overflow-y: scroll;
    letter-spacing: 0;
    line-height: 1.5;
    font-size: 15px;
    color: #444;
    font-weight: 400;
    font-family: NanumBarunGothic,Dotum,'돋움',sans-serif;
}
html {
    -webkit-text-size-adjust: 100%;
}
.main-movie-list > ol:before, .main-movie-list > ol:after {
    content: '';
    display: table;
}
.main-movie-list > ol:after {
    clear: both;
}
.main-movie-list > ol:before, .main-movie-list > ol:after {
    content: '';
    display: table;
}
        .bo {
            text-align: center;
        }
        		#Box_Office {
			left: 10%;
			text-align: center;
		}
		#Description {
			text-align: center;
			display : flex;
		}
		#test1 {
			width : 35%;
		}
		#test2{
			color: white;
			text-align:left;
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
    </style>
</html>