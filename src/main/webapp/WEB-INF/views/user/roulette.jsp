<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Roulette</title>
<style>
.rouletter {
	position: relative;
	width: 400px;
	height: 400px;
	margin: 50px auto;
	overflow: hidden;
}

.rouletter-bg {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 350px;
	height: 350px;
	border-radius: 50%;
	overflow: hidden;
	background-color: #f5f5f5;
}

.rouletter-wacu {
	width: 100%;
	height: 100%;
	background: url('${root}images/roulette_.png') no-repeat;
	background-size: 100%;
	transform-origin: center;
}

.rouletter-arrow {
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	width: 0;
	height: 0;
	border-right: 10px solid transparent;
	border-left: 10px solid transparent;
	border-top: 40px solid red;
}

.rouletter-btn {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 80px;
	height: 80px;
	border-radius: 50%;
	background: #fff;
	border: 2px solid;
	z-index: 1;
	cursor: pointer;
}
.fixed-button {
	position: fixed;
	top: 30%;
	left: 0; /* 화면 왼쪽에 고정 */
	transform: translateY(-50%); /* 버튼을 정확히 가운데로 위치시키기 위해 */
	background-color: #fec5bb; /* 버튼의 배경색 */
	color: white; /* 버튼 텍스트 색상 */
	padding: 10px 20px; /* 버튼의 패딩 */
	border: none; /* 테두리 제거 */
	cursor: pointer; /* 마우스 커서 변경 */
	z-index: 1000; /* 다른 요소 위에 버튼이 표시되도록 설정 */
	border-radius: 20px; /* 버튼의 오른쪽 모서리를 둥글게 */
	font-size: 25px;
}

@keyframes spinRoulette {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(calc(var(--deg1) * 1deg)); }
}

</style>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<div id="app">
		<div class="rouletter">
			<div class="rouletter-bg">
				<div class="rouletter-wacu" id="roulette"></div>
			</div>
			<div class="rouletter-arrow"></div>
			<button class="rouletter-btn" id="startBtn" disabled>Start</button>
		</div>
	</div>
	
	<button class="fixed-button"
			onclick="location.href='${root}main'">돌아가기</button>
				
	<script>
	
	
	   // 각 항목의 확률 설정 (총합이 1이 되도록 설정)
	   const probabilities = [0.05, 0.5, 0.05, 0.01, 0.15, 0.04, 0.1, 0.1]; // 항목별 확률
	   const cumulativeProbabilities = probabilities.reduce((acc, prob, i) => {
	      acc.push((acc[i - 1] || 0) + prob);
	      return acc;
	   }, []);
	
	   let point;
	   
	   
	   // 랜덤 숫자 부여
	   const rRandom = () => {
	      const random = Math.random();
	      return cumulativeProbabilities.findIndex(cumProb => random < cumProb);
	   };
	
	   const rotateRoulette = () => {
	      const roulette = document.getElementById('roulette');
	      const btn = document.getElementById('startBtn');
	      const setNum = rRandom();
	
	      const deg1 = 360 * 5 + setNum * 45; // 5바퀴 이상 회전, 각도는 45도 간격
	
	      // 애니메이션을 실행하기 전에 스타일 초기화
	      roulette.style.setProperty('--deg1', deg1);
	      roulette.style.animation = 'none';
	
	      // 애니메이션 적용
	      setTimeout(() => {
	         roulette.style.animation = `spinRoulette 3s cubic-bezier(0.25, 1, 0.5, 1)`;
	      }, 50);
	
	      // 애니메이션 종료 후 처리
	      setTimeout(() => {
	         btn.style.pointerEvents = "auto";
	         rLayerPopup(setNum);
	         savePoint(point);
	         
	      }, 3050); // 3초 후에 알림을 띄움
	      	
	   };
	
	   // 정해진 alert 띄우기, custom modal 등
	   const rLayerPopup = (num) => {
	      switch (num) {
	         case 1:
	            alert("축하드립니다! 2포인트를 획득하셨습니다.");
	            point = 2;
	            break;
	         case 3:
	            alert("축하드립니다! 100포인트를 획득하셨습니다.");
	            point = 100;
	            break;
	         case 5:
	            alert("축하드립니다! 50포인트를 획득하셨습니다.");
	            point = 50;
	            break;
	         case 7:
	            alert("축하드립니다! 10포인트를 획득하셨습니다.");
	            point = 10;
	            break;
	         default:
	            alert("꽝! 다음 기회에");
	         	point = 0;
	      }
	   };
	   
	   document.addEventListener("DOMContentLoaded", function() {
		    const btn = document.getElementById('startBtn');

		    // AJAX 요청으로 서버에 사용자가 오늘 룰렛을 돌릴 수 있는지 확인
		    const userIdx = '${loginUserBean.user_idx}';
		    $.ajax({
		        type: "POST",
		        url: "${root}checkCanSpin",  // 룰렛을 돌릴 수 있는지 확인하는 서버 엔드포인트
		        data: JSON.stringify({ user_idx: userIdx }),
		        contentType: "application/json; charset=utf-8",
		        success: function(response) {
		            if (response.canSpin) {
		                btn.disabled = false; // 버튼 활성화
		                btn.style.pointerEvents = "auto";
		            } else {
		                alert("오늘은 이미 룰렛을 돌리셨습니다.");
		            }
		        },
		        error: function(error) {
		            alert("서버와 통신 중 오류가 발생했습니다.");
		        }
		    });

		    // 버튼 클릭 이벤트
		    btn.addEventListener('click', function() {
		        this.disabled = true; // 버튼 비활성화
		        this.style.pointerEvents = "none"; // 클릭 비활성화
		        rotateRoulette();
		    });
		});
	   
	   function savePoint(num){
		   
		   const userIdx = '${loginUserBean.user_idx}';
		   
		   $.ajax({
			   type:"POST",
			   url: "${root}savePoint",
			   data: JSON.stringify({ point: num, user_idx: userIdx }),
			   contentType: "application/json; charset=utf-8",
		        success: function(response) {
		            if (response.status === "success") {
		            } else {
		            }
		        },
		        error: function(error) {
		            alert("포인트 저장 중 오류가 발생했습니다.");
		        }
		   });
	   }
	   
	   
	   
	   </script>


</body>
</html>
