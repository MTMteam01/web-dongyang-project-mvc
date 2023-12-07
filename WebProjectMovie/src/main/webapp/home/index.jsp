<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>


<%@ include file="../layout/top.jsp" %>

<div id = "Box_Office">
	<%String memid = (String)session.getAttribute("id"); %>
	<%= memid %> 님 환영합니다
	<h1 class="bo" style="background-color:black;">
	박스 오피스
	</h1>
	<img src="https://img.megabox.co.kr/SharedImg/2023/11/22/aM1zeiVGySigNObspcjcoH9NaebEPa2f_420.jpg" alt="서울의 봄" class="poster" onerror="noImg(this, 'main');">
	<img src="https://img.megabox.co.kr/SharedImg/2023/11/14/gOM47v1Z75W0lzLSPT06Jd3khuBe6Xti_420.jpg" alt="싱글 인 서울" class="poster" onerror="noImg(this, 'main');">
	<img src="https://img.megabox.co.kr/SharedImg/2023/11/07/iyRP9bUIgcFPr0piup9QzQJoFoH1ZVpM_420.jpg" alt="괴물" class="poster" onerror="noImg(this, 'main');">
	<img src="https://img.megabox.co.kr/SharedImg/2023/11/15/OM0860oG9r27Dz8NvMXxZJqydpkEwMdK_420.jpg" alt="나폴레옹" class="poster" onerror="noImg(this, 'main');">
</div>
<br>
<hr>
<div id = "Description">
	<div id ="test1">
		<img src="https://img.megabox.co.kr/SharedImg/2023/11/15/OM0860oG9r27Dz8NvMXxZJqydpkEwMdK_420.jpg" alt="나폴레옹" onerror="noImg(this, 'main');">
	</div>
	<div id ="test2">
		스스로 황제가 된 영웅! 인가?
		<br><br>
		1793년 혁명의 불꽃이 프랑스 전역을 밝히기 시작한다. 코르시카 출신의 장교 '나폴레옹'(호아킨 피닉스)은
		<br>
		혼란스러운 상황 속 국가를 위해 맞서며 영웅으로 떠오른다.
		<br><br>
		한편, 사교 파티에서 영웅 ‘나폴레옹’을 만난 '조제핀'(바네사 커비)은 자신의 운명을 바꾸기 위해 ‘나폴레옹’을 선택하고
		<br>
		‘나폴레옹’은 마침내 스스로 황제의 자리에 오르게 된다.
		<br><br>
		하지만, ‘조제핀’은 계속해서 ‘나폴레옹’을 흔들고, ‘나폴레옹’의 야망은 ‘조제핀’과 끝없이 충돌하는데…
		<br><br>
		세상을 정복한 영웅 아무것도 갖지 못한 황제,
		<br>
		‘나폴레옹’의 대서사가 펼쳐진다!
	</div>
	
</div>
<br><br>
<div class="mv">
<iframe width="560" height="315" src="https://www.youtube.com/embed/-AZ7cnwn2YI?si=0HB-PHYurNBvq7z4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<iframe width="560" height="315" src="https://www.youtube.com/embed/UxrRXOPDkR4?si=QHIpVR74UFRt12X-" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

</div>

<%@ include file="../layout/footer.jsp" %>


</body>
<style>
		body {
            background-color: black;
            font-family: Arial, sans-serif;
            color: #95a5a6 !important;
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