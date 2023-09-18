package bag.model;

import lombok.Data;

@Data
public class Refund {
	String refund = "<div style=\'font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112);" +
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;\'>" +
					"<span style='font-family: 굴림, gulim; outline: none !important; color: rgb(0, 117, 200); user-select: auto;'>" + 
					"<b style='font-family: Pretendard, sans-serif !important; outline: none !important; user-select: auto;'>[교환/반품/환불 안내]</b></span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; letter-spacing: -0.12px; " + 
					"background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"* 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.</span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; letter-spacing: -0.12px; " + 
					"background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"* 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 '1:1문의' 또는 '서플라이루트 소비자상담실(070-4706-0094)'로 접수 부탁 드립니다.</span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; letter-spacing: -0.12px; " + 
					"background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"* 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.</span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"* 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.</span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"* 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.</span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"&nbsp; 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.</span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<br style='user-select: auto; outline: none !important;'></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<br style='user-select: auto; outline: none !important;'></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; color: rgb(0, 117, 200); user-select: auto;'>" + 
					"<b style='font-family: Pretendard, sans-serif !important; outline: none !important; user-select: auto;'>접수 방법</b></span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; letter-spacing: -0.12px; " + 
					"background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"1. 마이 페이지-&gt; 주문배송조회에서 신청 가능</span></div><div style='font-family: Pretendard, " + 
					"sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; letter-spacing: -0.12px; " + 
					"background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"2. 마이 페이지 -&gt; 1:1 문의 작성</span></div><div style='font-family: Pretendard, sans-serif; " + 
					"margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; letter-spacing: -0.12px; " + 
					"background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<br style='user-select: auto; outline: none !important;'></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; color: rgb(0, 117, 200); user-select: auto;'>" + 
					"<b style='font-family: Pretendard, sans-serif !important; outline: none !important; user-select: auto;'>환불안내</b></span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; " + 
					"letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"* 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.</span></div>" + 
					"<div style='font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); " + 
					"font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;'>" + 
					"<span style='font-family: 굴림, gulim; outline: none !important; user-select: auto;'>" + 
					"* 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.</span></div>";
}
