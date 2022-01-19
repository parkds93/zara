<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/css/detail.css" rel="stylesheet">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="resources/js/payment.js"></script>
<script type="text/javascript" src="resources/js/detail.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#more").click(function(){
		let overflow = $("#itemInfo").css("overflow");
		alert(overflow);
		if(overflow == "hidden"){
			$("#itemInfo").css("overflow","scroll");
			$("#more").html("감추기");
		}else{
			$("#itemInfo").css("overflow","hidden");
			$("#more").html("더보기");
		}
	});	
	
	$("#pop").click(function(){
		window.open("jaraMain.do","main", "width=400,height=300,left=100,top=50");
	});
});

</script>
</head>
<body>
	<div class="header">
		<span class="logo">ZARA</span>
	</div>
	<div>
		<img src="">
	</div>
	<div class="mainContainer">
		<div class="child left">
			<div class="itemInfoBox" >
				<div class="itemInfo" id="itemInfo">
					<span>제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다</span>
					<span>제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다</span>
					<span>제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다</span>
					<span>제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다</span>
					<span>제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다제품설명입니다</span><br>
				</div>
				<span class="more" id="more">더보기</span>
			</div>

		</div>
		<div class="child center">
			<div class="images">
				<img class="image" src="resources/images/3918312615_1_1_1.png">
				<img class="image" src="resources/images/3918312615_2_1_1.png">
				<img class="image" src="resources/images/3918312615_2_2_1.png">
			</div>
		</div>
		<div class="imageDetail">
			<img class="smallimage" src="resources/images/3918312615_1_1_1.png">
			<img class="smallimage" src="resources/images/3918312615_2_1_1.png">
			<img class="smallimage" src="resources/images/3918312615_2_2_1.png">
		</div>
		<div class="child right">
			<span><h1>English 제품명</h1></span><br> <span>English제품설명입니다English제품설명입니다English제품설명입니다English제품설명입니다English제품설명입니다</span><br>
			<span>가격입니다</span><br> <span>color입니다.</span><br>
			<hr>
			<ul>
				<li>size1</li>
				<li>size2</li>
				<li>size3</li>
				<li>size4</li>
			</ul>
			<button id="payment">결제하기</button>
			<br> <span>오프라인 매장에 재고 상태 보기</span><br> <span>배송, 교환
				및 반품</span><br> <span>공유하기</span><br>
		</div>
	</div>
	<button id="pop">팝업열기</button>
</body>
</html>