<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>:::FAQ:::</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="./home/indexScript.js"></script>
</head>
<body class="bdstyle">
	<%@ include file="../layout/top.jsp" %>    
	<div class="FAQ">
		<h2 class="Question">Q. 영화관람 등급은 어떻게 되나요?</h2>
		<br>
		<p class="Paragraph">
			<strong>전체 관람가 : 모든 연령의 고객이 관람 가능</strong>
	 		<br><br>
			<strong>12세 이상 관람가</strong> : <br>만12세 이상(주민등록상 생일기준) 관람 가능<br>
	                         만12세 미만 고객은 보호자(성인) 동반 시 관람 가능
			<br><br>
			<strong>15세 이상 관람가</strong> : <br>만15세 이상(주민등록상 생일기준) 관람 가능<br>
	                         만15세 미만 고객은 보호자(성인 동반 시 관람 가능
			<br><br>
			<strong>청소년</strong> 관람불가 : 만18세 이상(주민등록상 생일기준) 관람 가능<br>
	                         -  만18세 이상이더라도 고등학교 재학중인 경우 관람 불가<br>
	                         - 신분증 지참 필수 (티켓 구매, 입장 시 신분증 확인 必)<br>
	                        만18세 미만 고객은 보호자(성인) 동반 시에도 관람 불가	
		</p>
		<hr>
		<br>
		<h2 class="Question">Q. 인터넷 예매시 부분환불/교환이 가능한가요?</h2>
		<br>
		<p class="Paragraph">
			인터넷 예매시에는 예매매수의 전체환불 및 교환만 가능합니다.<br> 
			인터넷 예매분에 대해 교환환불 및 취소하고자 하실 경우, 예매하신 내역 전체에 대해 취소 후<br>
			새로 예매를 하시거나 해당 영화관을 방문하셔서 처리하셔야 합니다.
			<br><br>
			1) 인터넷상 취소 가능시간 (상영시간 20분전까지만 가능) <br>
			 - 전체 취소가능하며, 부분 취소 불가<br>
			 EX) 인원수, 관람자, 시간변경은 모두 취소 후 재예매 해주셔야합니다.
			<br><br>
			2) 현장 취소 가능시간(상영시간 전까지만 가능) <br>
			  - 전체환불 및 교환가능<br>
			 단, 부분환불 및 교환은 사용하신 카드로 전체 취소 후 재결제하셔야 합니다.		
		</p>
		<hr>
		<br>
		<h2 class="Question">Q. 예매내역을 반드시 출력해가야하나요?</h2>
		<br>
		<p class="Paragraph">
			비회원 예매 시 남긴 휴대폰 번호로 전송된 예매번호를 기준으로 무인발권기 및 현장 매표소에서<br>
			티켓 출력이 가능합니다.
			<br><br>
			* 비회원 예매의 경우 모바일티켓 발권이 되지 않습니다.  
		</p>
		<hr>
		<br>
		<h2 class="Question">Q. 예매를 한뒤, 시간대나 좌석변경이 가능한가요?</h2>
		<br>
		<p class="Paragraph">
			예매내역 변경은 예매취소나 환불 후 재 결제하는 방식으로 가능합니다.
			<br><br>
			인터넷 상으로는 예매확인 및 취소에서 상영시간 20분전까 취소가 가능하며,<br>
			상영시작 20분 전까지 재 예매가 가능합니다.<br>
			현장에서는 영화의 상영시간 전까지 매표소에서 전체 환불 후 원하시는 시간이나 좌석으로<br>
			재 결제를 하셔야 합니다.
		</p>
		<hr>
		<br>
	</div>
	<%@ include file="../layout/footer.jsp" %>
</body>
<style>
	.bdstyle {
		background-color: black !important;
	}
	.FAQ {
		margin-left: 25%;
		margin-right: 25%;
	}
	.Question{
		color: #68c1a6;
	}
	.Paragraph{
		color: white;
	}
</style>
</html>