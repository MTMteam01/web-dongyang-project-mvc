// 이미지 클릭 시 실행될 함수
function redirectToAnotherPage() {
  // 이동할 페이지 URL 설정
  var targetPageUrl = "https://example.com";

  // 새로운 페이지로 이동
  window.location.href = targetPageUrl;
}

// 이미지를 클릭할 때 위의 함수 실행
document.getElementById("link").addEventListener("click", redirectToAnotherPage);
