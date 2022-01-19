function requestPay() {
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp04762055"); // 예: imp00000000
  // IMP.request_pay(param, callback) 결제창 호출
  IMP.request_pay({ // param
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: "ORD20180131-0000019",
      name: "노르웨이 회전 의자",
      amount: 100,
      buyer_email: "gildong@gmail.com",
      buyer_name: "홍길동",
      buyer_tel: "010-4242-4242",
      buyer_addr: "서울특별시 강남구 신사동",
      buyer_postcode: "01181"
  }, function (rsp) { // callback
      if (rsp.success) {
          console.log(rsp);
    	  $.ajax({
              url: "verifyIamport", // 예: https://www.myservice.com/payments/complete
              method: "POST",
              data: {imp_uid: rsp.imp_uid},
          }).done(function (data) {
            console.log(data);
            console.log(rsp);
            if(rsp.paid_amount == data.response.amount){
            	alert("검증, 결제 완료");
            }else
            	alert("검증 실패");
        	  // 가맹점 서버 결제 API 성공시 로직
          })
          // 결제 성공 시 로직,
      } else {
    	  alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
          // 결제 실패 시 로직,
      }
  });
}