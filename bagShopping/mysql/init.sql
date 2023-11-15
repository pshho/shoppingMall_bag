CREATE DATABASE iwillbag DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- 클라이언트 캐릭터셋 설정
SET character_set_client = 'utf8mb4';

-- 연결 캐릭터셋 설정
SET character_set_connection = 'utf8mb4';

-- 결과 캐릭터셋 설정
SET character_set_results = 'utf8mb4';

use iwillbag;

create table notice(
	notice_id int auto_increment primary key,
    n_title varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    n_writer varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    n_content text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    notice_reg_date timestamp default now()
);

insert into notice(n_title, n_writer, n_content)
values
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full.jpg" alt="등록된 이미지"></span><br></span></div>'),
('2015백스테이 리뉴얼 완료!!', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. BagStay 관리자 입니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">그동안 백스테이를 아껴주시고 사랑해주시는 많은 회원님들의 덕분으로 홈페이지를 전면 리뉴얼 진행하였습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원님들이 더욱더 편하고 쉽게 쇼핑하실수 있도록 디자인및 기능개선을 하였으며 회원님들께 보다 나은 혜택을 드리고자</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원관리 프로그램도 개선되었습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">앞으로도 더욱더 발전하고 노력하는 백스테이가 되겠습니다.&nbsp; 감사합니다^^</p>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">아이윌백 회원 혜택 및 등급별 혜택 안내</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/membership_han_01.jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329.jpg" alt="등록된 이미지"></span><br></span></div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '아이윌백 회원 혜택 및 등급별 혜택 안내<div><span><img src="/upFile/membership_han_01 (1).jpg" alt="등록된 이미지"></span><br></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('AS안내입니다. AS가 필요하신 고객님은 꼭 한번 읽어주세요^^', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. 고객님.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 타 쇼핑몰과 차별화를 두기위해 백스테이의 회원님들께는 1년간 무상AS를 시행하고 있습니다. (왕복택배비는 고객별도부담)</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">AS비용은 백스테이가 회원님 대신 지불하는 방식이라 비회원님은 무상AS가 절대 불가합니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">비회원 (네이버페이 구매 포함)이시면 1개월 무상AS이며, 1년 유상AS가 가능합니다. &nbsp;단, 제품의 초기불량(구매후 2주일이내 초기불량이 확인됐을경우)은 새상품으로 교환됩니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이에서 판매하는 모든 브랜드는 브랜드별로 제조사가 달라 AS방법과 가능여부가 조금씩 차이가 있습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 고객님들의 입장에서 제조사와 협의해 AS를 진행하고 있으며, 항상 고객님의 입장에서 생각하도록 노력하겠습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">AS가 불가능한 부분 : 상품이 단종되어 같은장식을 구할 수 없는경우, 가죽(원단)의 헤짐,</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽(원단)의 찢어짐, 가죽(원단)의 오염등</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽이나 원단을 갈아야만 해결되는 부분은 AS로 분류되지않습니다.</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">AS문의는 카카오톡으로 사진첨부하여 문의주시는게 제일 정확하게 답변가능하며,</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">전화문의 또는 Q&amp;A게시판으로&nbsp;</span></span><span style="font-weight: bolder; font-size: 9pt;"><span style="font-size: 16px;">문의주시면 빠른 답변드릴수 있도록 하겠습니다. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">감사합니다.</span></span></p>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (3).jpg" alt="등록된 이미지"></span><br></span></div>'),('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full.jpg" alt="등록된 이미지"></span><br></span></div>'),
('2015백스테이 리뉴얼 완료!!', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. BagStay 관리자 입니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">그동안 백스테이를 아껴주시고 사랑해주시는 많은 회원님들의 덕분으로 홈페이지를 전면 리뉴얼 진행하였습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원님들이 더욱더 편하고 쉽게 쇼핑하실수 있도록 디자인및 기능개선을 하였으며 회원님들께 보다 나은 혜택을 드리고자</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원관리 프로그램도 개선되었습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">앞으로도 더욱더 발전하고 노력하는 백스테이가 되겠습니다.&nbsp; 감사합니다^^</p>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">아이윌백 회원 혜택 및 등급별 혜택 안내</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/membership_han_01.jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329.jpg" alt="등록된 이미지"></span><br></span></div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '아이윌백 회원 혜택 및 등급별 혜택 안내<div><span><img src="/upFile/membership_han_01 (1).jpg" alt="등록된 이미지"></span><br></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('AS안내입니다. AS가 필요하신 고객님은 꼭 한번 읽어주세요^^', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. 고객님.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 타 쇼핑몰과 차별화를 두기위해 백스테이의 회원님들께는 1년간 무상AS를 시행하고 있습니다. (왕복택배비는 고객별도부담)</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">AS비용은 백스테이가 회원님 대신 지불하는 방식이라 비회원님은 무상AS가 절대 불가합니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">비회원 (네이버페이 구매 포함)이시면 1개월 무상AS이며, 1년 유상AS가 가능합니다. &nbsp;단, 제품의 초기불량(구매후 2주일이내 초기불량이 확인됐을경우)은 새상품으로 교환됩니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이에서 판매하는 모든 브랜드는 브랜드별로 제조사가 달라 AS방법과 가능여부가 조금씩 차이가 있습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 고객님들의 입장에서 제조사와 협의해 AS를 진행하고 있으며, 항상 고객님의 입장에서 생각하도록 노력하겠습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">AS가 불가능한 부분 : 상품이 단종되어 같은장식을 구할 수 없는경우, 가죽(원단)의 헤짐,</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽(원단)의 찢어짐, 가죽(원단)의 오염등</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽이나 원단을 갈아야만 해결되는 부분은 AS로 분류되지않습니다.</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">AS문의는 카카오톡으로 사진첨부하여 문의주시는게 제일 정확하게 답변가능하며,</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">전화문의 또는 Q&amp;A게시판으로&nbsp;</span></span><span style="font-weight: bolder; font-size: 9pt;"><span style="font-size: 16px;">문의주시면 빠른 답변드릴수 있도록 하겠습니다. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">감사합니다.</span></span></p>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (3).jpg" alt="등록된 이미지"></span><br></span></div>'),('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full.jpg" alt="등록된 이미지"></span><br></span></div>'),
('2015백스테이 리뉴얼 완료!!', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. BagStay 관리자 입니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">그동안 백스테이를 아껴주시고 사랑해주시는 많은 회원님들의 덕분으로 홈페이지를 전면 리뉴얼 진행하였습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원님들이 더욱더 편하고 쉽게 쇼핑하실수 있도록 디자인및 기능개선을 하였으며 회원님들께 보다 나은 혜택을 드리고자</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원관리 프로그램도 개선되었습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">앞으로도 더욱더 발전하고 노력하는 백스테이가 되겠습니다.&nbsp; 감사합니다^^</p>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">아이윌백 회원 혜택 및 등급별 혜택 안내</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/membership_han_01.jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329.jpg" alt="등록된 이미지"></span><br></span></div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '아이윌백 회원 혜택 및 등급별 혜택 안내<div><span><img src="/upFile/membership_han_01 (1).jpg" alt="등록된 이미지"></span><br></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('AS안내입니다. AS가 필요하신 고객님은 꼭 한번 읽어주세요^^', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. 고객님.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 타 쇼핑몰과 차별화를 두기위해 백스테이의 회원님들께는 1년간 무상AS를 시행하고 있습니다. (왕복택배비는 고객별도부담)</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">AS비용은 백스테이가 회원님 대신 지불하는 방식이라 비회원님은 무상AS가 절대 불가합니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">비회원 (네이버페이 구매 포함)이시면 1개월 무상AS이며, 1년 유상AS가 가능합니다. &nbsp;단, 제품의 초기불량(구매후 2주일이내 초기불량이 확인됐을경우)은 새상품으로 교환됩니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이에서 판매하는 모든 브랜드는 브랜드별로 제조사가 달라 AS방법과 가능여부가 조금씩 차이가 있습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 고객님들의 입장에서 제조사와 협의해 AS를 진행하고 있으며, 항상 고객님의 입장에서 생각하도록 노력하겠습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">AS가 불가능한 부분 : 상품이 단종되어 같은장식을 구할 수 없는경우, 가죽(원단)의 헤짐,</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽(원단)의 찢어짐, 가죽(원단)의 오염등</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽이나 원단을 갈아야만 해결되는 부분은 AS로 분류되지않습니다.</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">AS문의는 카카오톡으로 사진첨부하여 문의주시는게 제일 정확하게 답변가능하며,</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">전화문의 또는 Q&amp;A게시판으로&nbsp;</span></span><span style="font-weight: bolder; font-size: 9pt;"><span style="font-size: 16px;">문의주시면 빠른 답변드릴수 있도록 하겠습니다. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">감사합니다.</span></span></p>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (3).jpg" alt="등록된 이미지"></span><br></span></div>'),('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full.jpg" alt="등록된 이미지"></span><br></span></div>'),
('2015백스테이 리뉴얼 완료!!', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. BagStay 관리자 입니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">그동안 백스테이를 아껴주시고 사랑해주시는 많은 회원님들의 덕분으로 홈페이지를 전면 리뉴얼 진행하였습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원님들이 더욱더 편하고 쉽게 쇼핑하실수 있도록 디자인및 기능개선을 하였으며 회원님들께 보다 나은 혜택을 드리고자</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">회원관리 프로그램도 개선되었습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">앞으로도 더욱더 발전하고 노력하는 백스테이가 되겠습니다.&nbsp; 감사합니다^^</p>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">아이윌백 회원 혜택 및 등급별 혜택 안내</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/membership_han_01.jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329.jpg" alt="등록된 이미지"></span><br></span></div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('아이윌백 회원 혜택 및 등급별 혜택 안내', 'admin', '아이윌백 회원 혜택 및 등급별 혜택 안내<div><span><img src="/upFile/membership_han_01 (1).jpg" alt="등록된 이미지"></span><br></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('10월 "베스트 상품평" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요. 코오롱몰 담당자입니다.&nbsp;</div><div><br></div><div>10월 "베스트 상품평" 이벤트 당첨자를 발표합니다.&nbsp;</div><div><br></div><div>이벤트 당첨을 진심으로 축하합니다!&nbsp;</div><div><br></div><div>당첨되신 고객님들에게는 11월 5일까지 5,000P가 지급됩니다.</div><div><br></div><div>[당첨자]</div><div><br></div><div>heywon3***</div><div><br></div><div>hyeweo***</div><div><br></div><div>lmk5***</div><div><br></div><div>hyangg***</div><div><br></div><div>khr8***</div><div><br></div><div>[베스트 상품평 링크]</div><div>https://www.kolonmall.com/Event/Review</div><div><br></div><div>[확인해 주세요]</div><div><br></div><div>- 포인트는 당첨일 기준 익일 적립 포인트로 전환되어 사용하실 수 있습니다.</div><div><br></div><div>- 적립된 포인트의 유효기간은 적립 포인트 전환일로부터 90일입니다.</div><div><br></div><div>- 포인트 지급은 온라인 상품 구매자인 경우에만 지급됩니다.</div><div><br></div><div>- 비정상적으로 이벤트 참여 시 포인트 지급이 제한될 수 있습니다.</div><div><br></div><div>[상품 포인트를 얻는 세가지 방법!]</div><div><br></div><div>- 매월 베스트 상품평으로 선정되는 5분께 eKOLON포인트 5,000P 지급</div><div><br></div><div>- 상품의 첫 상품평 작성 시 eKOLON포인트 1,500P 지급</div><div><br></div><div>- 포토상품평 작성시 eKOLON포인트 1,000P 지급</div><div><br></div><div>많이많이 참여해 주시기 바랍니다♥</div><div><br></div><div>다시 한 번 당첨되신 분들 축하드립니다!</div>'),
('카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오 페이로 구매 결제하면 포인트 적립과 할인 혜택이!!!</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/kakaopay28329 (1).jpg" alt="등록된 이미지"></span><br></span></div>'),
('코오롱몰 11월 "BLACK 10DAYS" 이벤트 당첨자 발표', 'admin', '<div>안녕하세요 코오롱몰 담당자입니다.</div><div><br></div><div>11월 20일부터 29일까지 코오롱몰에서 진행하였던 블랙프라이데이 &lt;BLACK 10DAYS&gt;가 성황리에 종료되었습니다.</div><div><br></div><div>&nbsp;기간 내 코오롱몰에서 구매하신 고객님들을 대상으로 추첨을 통해 경품 당첨자를 선정하였습니다.</div><div><br></div><div>더 많은 고객님들께 혜택을 드릴 수 없어 아쉽지만, 코오롱몰을 사랑해주시는 고객님들을 위해 앞으로도 다채로운 이벤트로 찾아 뵙기를 약속 드립니다.</div><div><br></div><div>성원에 감사드리며 따뜻하고 건강한 연말 보내시길 바랍니다.&nbsp;</div><div><br></div><div>당첨되신 고객님께 진심으로 축하드립니다.</div><div><br></div><div>l 코오롱스포츠 20년형 오두막 면텐트 8.8(1명)</div><div><br></div><div>&nbsp; &nbsp; zangu1***&nbsp;</div><div><br></div><div>&lt;꼭 읽어주세요!&gt;</div><div><br></div><div>- 본 이벤트는 코오롱몰 "BLACK 10DAYS" 행사 기간 내 구매 고객님들을 대상으로 자동 응모가 진행되었습니다.</div><div><br></div><div>- 본 이벤트의 경품은 현금으로의 교환이나 환불이 불가합니다.</div><div><br></div><div>- 본 이벤트의 경품 당첨 기준은 당사 내부 정보이므로 공개가 불가합니다.</div><div><br></div><div>- 당첨 안내 및 경품 발송 관련하여 코오롱몰 고객센터에서 고객정보의 연락처로 개별 연락드릴 예정입니다.</div><div><br></div><div>- 경품 당첨고객에게는 세법에 따라 제세공과금이 발생하나 이는 본사 부담예정입니다.</div><div><br></div><div>&nbsp; &nbsp;다만, 당사 세무신고 목적으로 신분증 사본을 요청 드릴 수 있으며 해당 개인정보는 경품 지급 이후 폐기됩니다.</div><div><br></div><div>&nbsp; &nbsp;(제세공과금은 상품 금액의 약 22%이며, 제세공과금 납부 거부 및 신분증 정보 미제공 시 당첨이 취소됩니다.)</div><div><br></div><div>- 본 이벤트에 부정한 방법으로 응모 시 당첨이 자동으로 취소될 수 있습니다.</div>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (2).jpg" alt="등록된 이미지"></span><br></span></div>'),
('추석 연휴 관련 배송 안내', 'admin', '<div>안녕하세요. 코오롱몰입니다 :)</div><div><br></div><div>추석 연휴 배송일정을 안내드리오니 사이트 이용에 참고 부탁드립니다.</div><div><br></div><div>■ 연휴 전 배송마감</div><div><br></div><div>9월 28일(월) 오후 2:00 이전 결제완료 주문건까지,</div><div><br></div><div>연휴전 발송이 가능합니다.</div><div><br></div><div>(예약상품, 매장 출고 상품, 일부 입고지연 상품, 입점 브랜드 상품, 도서/산간 지역 제외)</div><div><br></div><div>※ 단, 입점 브랜드 상품은 입점사 사정에 따라 조기 배송 마감될수 있으며,</div><div><br></div><div>택배사 사정으로 인해 배송이 지연될수 있습니다.</div><div><br></div><div>■ 연휴 이후 배송개시</div><div><br></div><div>9월 28일(월) 오후 2:00 이후 결제완료 주문건은,</div><div><br></div><div>택배사 정상 영업 개시일인 10월 6일(화)부터 순차적으로 배송됩니다.</div><div><br></div><div>※ 택배사 파업 및 일부 사정에 따라 배송이 일부 지연 될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>풍성한 한가위 되시길 바랍니다.</div>'),
('택배 없는 날, 공휴일 배송 관련 안내', 'admin', '<div>안녕하세요, 코오롱몰입니다.</div><div><br></div><div>8월 14일(월) 택배 없는 날, 8월 15일(화) 공휴일로 인한 배송 안내 드립니다.</div><div><br></div><div>8/14일(금) 오후 결제 완료 주문 건부터는, 택배 정상 영업 개시 일인 8/16(수)부터 순차 배송됩니다.</div><div><br></div><div>※ 단, 택배사 사정에 따라 위의 일정이 변경 지연될 수 있습니다.</div><div><br></div><div>쇼핑에 불편함이 없도록 최선을 다하겠습니다.</div><div><br></div><div>감사합니다.</div>'),
('AS안내입니다. AS가 필요하신 고객님은 꼭 한번 읽어주세요^^', 'admin', '<p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">안녕하세요. 고객님.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 타 쇼핑몰과 차별화를 두기위해 백스테이의 회원님들께는 1년간 무상AS를 시행하고 있습니다. (왕복택배비는 고객별도부담)</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">AS비용은 백스테이가 회원님 대신 지불하는 방식이라 비회원님은 무상AS가 절대 불가합니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">비회원 (네이버페이 구매 포함)이시면 1개월 무상AS이며, 1년 유상AS가 가능합니다. &nbsp;단, 제품의 초기불량(구매후 2주일이내 초기불량이 확인됐을경우)은 새상품으로 교환됩니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이에서 판매하는 모든 브랜드는 브랜드별로 제조사가 달라 AS방법과 가능여부가 조금씩 차이가 있습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">백스테이는 고객님들의 입장에서 제조사와 협의해 AS를 진행하고 있으며, 항상 고객님의 입장에서 생각하도록 노력하겠습니다.</p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br style="opacity: 0; color: rgb(255, 255, 255);"></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">AS가 불가능한 부분 : 상품이 단종되어 같은장식을 구할 수 없는경우, 가죽(원단)의 헤짐,</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽(원단)의 찢어짐, 가죽(원단)의 오염등</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;가죽이나 원단을 갈아야만 해결되는 부분은 AS로 분류되지않습니다.</span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 12pt;"><span style="color: rgb(255, 0, 0);"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">AS문의는 카카오톡으로 사진첨부하여 문의주시는게 제일 정확하게 답변가능하며,</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">전화문의 또는 Q&amp;A게시판으로&nbsp;</span></span><span style="font-weight: bolder; font-size: 9pt;"><span style="font-size: 16px;">문의주시면 빠른 답변드릴수 있도록 하겠습니다. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;"><br style="opacity: 0; color: rgb(255, 255, 255);"></span></span></p><p style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="font-weight: bolder;"><span style="font-size: 16px;">감사합니다.</span></span></p>'),
('온라인 서비스 이용약관 및 eKOLON 멤버십 이용약관 개정 안내', 'admin', '<div>주요 개정 내용</div><div><br></div><div>- 개인정보보호법 개정(제39조의6, 개인정보 유효기간제 폐지)에 아래와 같이 "이용약관"의 일부 내용이 삭제 및 수정됩니다.</div><div><br></div><div>온라인 서비스 이용약관 개정</div><div>&nbsp;</div><div>제 7조 2항 (삭제)</div><div>「개인정보보호법」 제39조의6(개인정보의 파기에 대한 특례)에 따라 1년의 기간 동안 사이트를 이용하지 않거나 회원 가입 시 또는 회원정보 변경 시 "개인정보 유효기간" 에서 선택한 3년/탈퇴 시 의 기간동안 이용하지 아니하는 "회원"은 "회원" 정보를 휴면 상태로 처리/변경합니다. "회원"은 다시 "사이트"의 서비스를 이용하려면 거래 안전을 위하여 “회사”가 정하는 본인확인 절차 등을 이행해야 합니다.</div><div><br></div><div>eKOLON 멤버십 이용약관 개정</div><div>&nbsp; &nbsp; &nbsp;</div><div>제2장 제7조 7항 내용(수정)&nbsp; &nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[수정]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년 간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다.</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [기존]</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 회사는 회원이 최근 5년간 eKOLON 멤버십 서비스의 이용내역이 없는 경우, 그 기간이 경과한 날에 해당 회원의 회원 자격을 상실시키거나 회원정보를 분리보관할 수 있습니다. 단 회원의 별도 동의가 있는 경우에는 그 기간을 달리 정할 수 있습니다. 이 때, 회사는 이용내역이 없는 고객에 대하여 회원자격 상실 또는 회원정보 분리보관에 관한 통지를 30일 전까지 회원정보에 등록된 연락처로 합니다.</div><div><br></div><div>개정일정</div><div><br></div><div>공지기간 : 2023.09.12~2023.09.19</div><div>개정 시행일 : 2023.09.20</div>'),
('카카오톡 알림톡 오픈', 'admin', '<span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">카카오톡 알림톡 오픈</span><div><span style="color: rgb(53, 53, 53); font-family: S-Core, &quot;Noto Sans KR&quot;, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, Verdana, Dotum, AppleGothic, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span><img src="/upFile/bagstay_full (3).jpg" alt="등록된 이미지"></span><br></span></div>');

create table inquiry(
	inquiry_id int auto_increment primary key,
    in_title varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    in_writer varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    re_writer varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    in_content text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    inquiry_pw varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    public_status int,
    seq int,
    lev int,
    gid int,
    inquiry_reg_date timestamp default now()
);

insert into inquiry(in_title, in_writer, in_content, seq, lev, gid, public_status, re_writer)
values
('제품 사용에 대한 문의', '4hoons', '안녕하세요, 저는 최근에 여러분의 제품을 구매했습니다.&nbsp;<div>그러나 사용 중에 몇 가지 문제가 발생했습니다.&nbsp;</div><div>제품 설명서를 확인해보았지만 문제를 해결하지 못했습니다.&nbsp;</div><div>제품의 특정 기능과 사용 방법에 대한 도움을 주실 수 있을까요?</div>', 0, 0, 1, 0, null),
('배송 관련 문의', 'bukdu22', '제품을 주문한 지 얼마 되지 않아 배송 관련 문제가 발생했습니다.&nbsp;<div>배송이 예상보다 지연되고 있어서 걱정입니다.&nbsp;</div><div>배송 일정과 현재 진행 상황에 대한 정보를 알려주실 수 있을까요?</div>', 0, 0, 2, 0, null),
('웹사이트 오류 신고', 'buksung4', '회사의 웹사이트를 사용하면서 오류를 발견했습니다.&nbsp;<div>특정 페이지에서 로딩 문제와 함께 오류 메시지가 표시됩니다.&nbsp;</div><div>이 문제를 어떻게 해결할 수 있는지 안내해주실 수 있을까요?</div>', 0, 0, 3, 0, null),
('서비스 개선 제안', 'fivebean', '여러분의 서비스를 사용하면서&nbsp;<div>몇 가지 개선 사항을 제안하고자 합니다.&nbsp;<div>새로운 기능 추가와 사용자 경험 개선을 위한 아이디어가 있습니다.&nbsp;</div><div>이에 대한 피드백을 받을 수 있는 방법이 있을까요?</div></div>', 0, 0, 4, 0, null),
('결제 오류 문의', 'fourbean', '최근에 제품을 구매하려고 결제를 시도했으나,&nbsp;<div>결제 과정 중에 문제가 발생했습니다.&nbsp;</div><div>신용카드가 정상적으로 청구되지 않았으며,</div><div>&nbsp;주문이 완료되지 않았습니다.&nbsp;</div><div>결제 오류에 대한 도움이 필요합니다.</div>', 0, 0, 5, 0, null),
('제품 품질 문의', 'hoons', '제품을 사용하는 동안 몇 가지 품질 관련 문제가 발생했습니다.&nbsp;<div>부품이 손상되었거나 제품의 내구성에 문제가 있어 보입니다.&nbsp;</div><div>이에 대한 보증 및 수리 정책을 알려주실 수 있을까요?</div>', 0, 0, 6, 0, null),
('회원 가입 오류', 'jh1234', '회사의 회원 가입 페이지에서 오류가 발생하여&nbsp;<div>제대로 가입을 완료하지 못했습니다.&nbsp;</div><div>계정을 생성하려면 어떤 단계를 따라야 하는지&nbsp;</div><div>안내해주실 수 있을까요?</div>', 0, 0, 7, 0, null),
('서비스 해지 문의', 'jh5', '현재 회사의 서비스를 사용 중이지만,&nbsp;<div>해지를 고려하고 있습니다.&nbsp;</div><div>해지 절차와 관련된 정보를 제공해주시면 감사하겠습니다.</div>', 0, 0, 8, 0, null),
('제품 비교 및 추천 요청', 'juhoon', '여러분의 회사에서 판매하는 제품 중에서&nbsp;<div>어떤 제품을 선택해야 할지 고민 중입니다.&nbsp;</div><div>제품 간 비교 정보와 추천 사항을 알려주실 수 있을까요?</div>', 0, 0, 9, 0, null),
('서비스 이용 방법 문의', 'male5', '회사의 새로운 서비스를 처음 사용하고 있으며,&nbsp;<div>이용 방법과 주요 기능에 대해 이해하기 어렵습니다.&nbsp;</div><div>서비스 사용에 도움이 될만한 자습서 또는&nbsp;</div><div>가이드를 제공해주실 수 있을까요?</div>', 0, 0, 10, 0, null),
('제품 사용에 대한 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품을 구매해 주셔서 감사합니다.&nbsp;</div><div>문제를 해결하기 위해 도움을 드리겠습니다.&nbsp;</div><div>어떤 제품을 사용 중이신지와 발생한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주실 수 있을까요?&nbsp;</div><div>특히 어떤 특정 기능이나 사용 방법에&nbsp;</div><div>어려움을 겪고 계신지 설명해주시면,&nbsp;</div><div>보다 정확한 도움을 드릴 수 있을 것입니다.</div>', 1, 1, 1, 0, '4hoons'),
('배송 관련 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>주문하신 제품의 배송에 관심 가져 주셔서 감사합니다.&nbsp;</div><div>배송 지연으로 불편을 끼쳐 드려 죄송합니다.&nbsp;</div><div>주문 번호나 제품 정보를 제공해주시면,&nbsp;</div><div>배송 상태를 확인하고 정확한 정보를 알려드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 2, 0, 'bukdu22'),
('웹사이트 오류 신고에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>웹사이트 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>오류가 발생한 페이지의 URL과 어떤 오류 메시지가&nbsp;</div><div>표시되는지 알려주시면, 더 자세한 조사와 해결을 위해&nbsp;</div><div>도움을 드릴 수 있을 것입니다.&nbsp;</div><div>가능하면 브라우저와 운영 체제 정보도 함께 알려주시면&nbsp;</div><div>도움이 될 것입니다.</div>', 1, 1, 3, 0, 'buksung4'),
('서비스 개선 제안에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 개선 제안 감사합니다.&nbsp;</div><div>우리는 사용자의 의견을 소중하게 생각하고 있으며,&nbsp;</div><div>제안 사항을 검토하여 서비스를 개선할 것입니다.&nbsp;</div><div>구체적인 제안 사항을 더 자세히 알려주시면 감사하겠습니다.&nbsp;</div><div>어떤 측면을 개선하고자 하는지 자세한 내용을 공유해주시면&nbsp;</div><div>더 나은 서비스 제공을 위해 노력하겠습니다.</div>', 1, 1, 4, 0, 'fivebean'),
('결제 오류 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>결제 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>먼저 어떤 결제 방법을 사용하셨는지와 오류 메시지나&nbsp;</div><div>상세한 오류 내용을 알려주시면,&nbsp;</div><div>문제 해결을 위한 조치를 취할 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며,&nbsp;</div><div>빠른 도움을 드릴 수 있도록 노력하겠습니다.</div>', 1, 1, 5, 0, 'fourbean'),
('제품 품질 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 품질 문제로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>손상된 부품이나 품질에 관한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주시면, 보증 및 수리에 대한&nbsp;</div><div>안내를 제공해드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 6, 0, 'hoons'),
('회원 가입 오류에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>회원 가입 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>회원 가입 절차에서 발생한 오류에 대한 자세한 설명과&nbsp;</div><div>사용하신 브라우저 및 운영 체제 정보를 알려주시면,&nbsp;</div><div>빠른 도움을 드릴 수 있을 것입니다. 불편을 드려 죄송하며,&nbsp;</div><div>해결을 위해 노력하겠습니다.</div>', 1, 1, 7, 0, 'jh1234'),
('서비스 해지 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 해지에 관심을 가져 주셔서 감사합니다.&nbsp;</div><div>서비스 해지 절차와 요구 사항에 대한 정보를&nbsp;</div><div>제공해 드릴 수 있습니다. 어떤 서비스를 해지하려고&nbsp;</div><div>하는지 알려주시면, 필요한 안내를 제공해드리겠습니다.</div>', 1, 1, 8, 0, 'jh5'),
('제품 비교 및 추천 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 9, 0, 'juhoon'),
('제품 문제 해결을 위한 기술 지원 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 10, 0, 'male5'),
('제품 사용에 대한 문의', '4hoons', '안녕하세요, 저는 최근에 여러분의 제품을 구매했습니다.&nbsp;<div>그러나 사용 중에 몇 가지 문제가 발생했습니다.&nbsp;</div><div>제품 설명서를 확인해보았지만 문제를 해결하지 못했습니다.&nbsp;</div><div>제품의 특정 기능과 사용 방법에 대한 도움을 주실 수 있을까요?</div>', 0, 0, 21, 1, null),
('배송 관련 문의', 'bukdu22', '제품을 주문한 지 얼마 되지 않아 배송 관련 문제가 발생했습니다.&nbsp;<div>배송이 예상보다 지연되고 있어서 걱정입니다.&nbsp;</div><div>배송 일정과 현재 진행 상황에 대한 정보를 알려주실 수 있을까요?</div>', 0, 0, 22, 1, null),
('웹사이트 오류 신고', 'buksung4', '회사의 웹사이트를 사용하면서 오류를 발견했습니다.&nbsp;<div>특정 페이지에서 로딩 문제와 함께 오류 메시지가 표시됩니다.&nbsp;</div><div>이 문제를 어떻게 해결할 수 있는지 안내해주실 수 있을까요?</div>', 0, 0, 23, 1, null),
('서비스 개선 제안', 'fivebean', '여러분의 서비스를 사용하면서&nbsp;<div>몇 가지 개선 사항을 제안하고자 합니다.&nbsp;<div>새로운 기능 추가와 사용자 경험 개선을 위한 아이디어가 있습니다.&nbsp;</div><div>이에 대한 피드백을 받을 수 있는 방법이 있을까요?</div></div>', 0, 0, 24, 1, null),
('결제 오류 문의', 'fourbean', '최근에 제품을 구매하려고 결제를 시도했으나,&nbsp;<div>결제 과정 중에 문제가 발생했습니다.&nbsp;</div><div>신용카드가 정상적으로 청구되지 않았으며,</div><div>&nbsp;주문이 완료되지 않았습니다.&nbsp;</div><div>결제 오류에 대한 도움이 필요합니다.</div>', 0, 0, 25, 1, null),
('제품 품질 문의', 'hoons', '제품을 사용하는 동안 몇 가지 품질 관련 문제가 발생했습니다.&nbsp;<div>부품이 손상되었거나 제품의 내구성에 문제가 있어 보입니다.&nbsp;</div><div>이에 대한 보증 및 수리 정책을 알려주실 수 있을까요?</div>', 0, 0, 26, 0, null),
('회원 가입 오류', 'jh1234', '회사의 회원 가입 페이지에서 오류가 발생하여&nbsp;<div>제대로 가입을 완료하지 못했습니다.&nbsp;</div><div>계정을 생성하려면 어떤 단계를 따라야 하는지&nbsp;</div><div>안내해주실 수 있을까요?</div>', 0, 0, 27, 0, null),
('서비스 해지 문의', 'jh5', '현재 회사의 서비스를 사용 중이지만,&nbsp;<div>해지를 고려하고 있습니다.&nbsp;</div><div>해지 절차와 관련된 정보를 제공해주시면 감사하겠습니다.</div>', 0, 0, 28, 0, null),
('제품 비교 및 추천 요청', 'juhoon', '여러분의 회사에서 판매하는 제품 중에서&nbsp;<div>어떤 제품을 선택해야 할지 고민 중입니다.&nbsp;</div><div>제품 간 비교 정보와 추천 사항을 알려주실 수 있을까요?</div>', 0, 0, 29, 0, null),
('서비스 이용 방법 문의', 'male5', '회사의 새로운 서비스를 처음 사용하고 있으며,&nbsp;<div>이용 방법과 주요 기능에 대해 이해하기 어렵습니다.&nbsp;</div><div>서비스 사용에 도움이 될만한 자습서 또는&nbsp;</div><div>가이드를 제공해주실 수 있을까요?</div>', 0, 0, 30, 0, null),
('제품 사용에 대한 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품을 구매해 주셔서 감사합니다.&nbsp;</div><div>문제를 해결하기 위해 도움을 드리겠습니다.&nbsp;</div><div>어떤 제품을 사용 중이신지와 발생한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주실 수 있을까요?&nbsp;</div><div>특히 어떤 특정 기능이나 사용 방법에&nbsp;</div><div>어려움을 겪고 계신지 설명해주시면,&nbsp;</div><div>보다 정확한 도움을 드릴 수 있을 것입니다.</div>', 1, 1, 21, 1, '4hoons'),
('배송 관련 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>주문하신 제품의 배송에 관심 가져 주셔서 감사합니다.&nbsp;</div><div>배송 지연으로 불편을 끼쳐 드려 죄송합니다.&nbsp;</div><div>주문 번호나 제품 정보를 제공해주시면,&nbsp;</div><div>배송 상태를 확인하고 정확한 정보를 알려드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 22, 1, 'bukdu22'),
('웹사이트 오류 신고에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>웹사이트 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>오류가 발생한 페이지의 URL과 어떤 오류 메시지가&nbsp;</div><div>표시되는지 알려주시면, 더 자세한 조사와 해결을 위해&nbsp;</div><div>도움을 드릴 수 있을 것입니다.&nbsp;</div><div>가능하면 브라우저와 운영 체제 정보도 함께 알려주시면&nbsp;</div><div>도움이 될 것입니다.</div>', 1, 1, 23, 1, 'buksung4'),
('서비스 개선 제안에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 개선 제안 감사합니다.&nbsp;</div><div>우리는 사용자의 의견을 소중하게 생각하고 있으며,&nbsp;</div><div>제안 사항을 검토하여 서비스를 개선할 것입니다.&nbsp;</div><div>구체적인 제안 사항을 더 자세히 알려주시면 감사하겠습니다.&nbsp;</div><div>어떤 측면을 개선하고자 하는지 자세한 내용을 공유해주시면&nbsp;</div><div>더 나은 서비스 제공을 위해 노력하겠습니다.</div>', 1, 1, 24, 1, 'fivebean'),
('결제 오류 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>결제 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>먼저 어떤 결제 방법을 사용하셨는지와 오류 메시지나&nbsp;</div><div>상세한 오류 내용을 알려주시면,&nbsp;</div><div>문제 해결을 위한 조치를 취할 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며,&nbsp;</div><div>빠른 도움을 드릴 수 있도록 노력하겠습니다.</div>', 1, 1, 25, 1, 'fourbean'),
('제품 품질 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 품질 문제로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>손상된 부품이나 품질에 관한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주시면, 보증 및 수리에 대한&nbsp;</div><div>안내를 제공해드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 26, 0, 'hoons'),
('회원 가입 오류에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>회원 가입 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>회원 가입 절차에서 발생한 오류에 대한 자세한 설명과&nbsp;</div><div>사용하신 브라우저 및 운영 체제 정보를 알려주시면,&nbsp;</div><div>빠른 도움을 드릴 수 있을 것입니다. 불편을 드려 죄송하며,&nbsp;</div><div>해결을 위해 노력하겠습니다.</div>', 1, 1, 27, 0, 'jh1234'),
('서비스 해지 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 해지에 관심을 가져 주셔서 감사합니다.&nbsp;</div><div>서비스 해지 절차와 요구 사항에 대한 정보를&nbsp;</div><div>제공해 드릴 수 있습니다. 어떤 서비스를 해지하려고&nbsp;</div><div>하는지 알려주시면, 필요한 안내를 제공해드리겠습니다.</div>', 1, 1, 28, 0, 'jh5'),
('제품 비교 및 추천 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 29, 0, 'juhoon'),
('제품 문제 해결을 위한 기술 지원 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 30, 0, 'male5'),
('제품 사용에 대한 문의', '4hoons', '안녕하세요, 저는 최근에 여러분의 제품을 구매했습니다.&nbsp;<div>그러나 사용 중에 몇 가지 문제가 발생했습니다.&nbsp;</div><div>제품 설명서를 확인해보았지만 문제를 해결하지 못했습니다.&nbsp;</div><div>제품의 특정 기능과 사용 방법에 대한 도움을 주실 수 있을까요?</div>', 0, 0, 41, 1, null),
('배송 관련 문의', 'bukdu22', '제품을 주문한 지 얼마 되지 않아 배송 관련 문제가 발생했습니다.&nbsp;<div>배송이 예상보다 지연되고 있어서 걱정입니다.&nbsp;</div><div>배송 일정과 현재 진행 상황에 대한 정보를 알려주실 수 있을까요?</div>', 0, 0, 42, 0, null),
('웹사이트 오류 신고', 'buksung4', '회사의 웹사이트를 사용하면서 오류를 발견했습니다.&nbsp;<div>특정 페이지에서 로딩 문제와 함께 오류 메시지가 표시됩니다.&nbsp;</div><div>이 문제를 어떻게 해결할 수 있는지 안내해주실 수 있을까요?</div>', 0, 0, 43, 1, null),
('서비스 개선 제안', 'fivebean', '여러분의 서비스를 사용하면서&nbsp;<div>몇 가지 개선 사항을 제안하고자 합니다.&nbsp;<div>새로운 기능 추가와 사용자 경험 개선을 위한 아이디어가 있습니다.&nbsp;</div><div>이에 대한 피드백을 받을 수 있는 방법이 있을까요?</div></div>', 0, 0, 44, 0, null),
('결제 오류 문의', 'fourbean', '최근에 제품을 구매하려고 결제를 시도했으나,&nbsp;<div>결제 과정 중에 문제가 발생했습니다.&nbsp;</div><div>신용카드가 정상적으로 청구되지 않았으며,</div><div>&nbsp;주문이 완료되지 않았습니다.&nbsp;</div><div>결제 오류에 대한 도움이 필요합니다.</div>', 0, 0, 45, 1, null),
('제품 품질 문의', 'hoons', '제품을 사용하는 동안 몇 가지 품질 관련 문제가 발생했습니다.&nbsp;<div>부품이 손상되었거나 제품의 내구성에 문제가 있어 보입니다.&nbsp;</div><div>이에 대한 보증 및 수리 정책을 알려주실 수 있을까요?</div>', 0, 0, 46, 0, null),
('회원 가입 오류', 'jh1234', '회사의 회원 가입 페이지에서 오류가 발생하여&nbsp;<div>제대로 가입을 완료하지 못했습니다.&nbsp;</div><div>계정을 생성하려면 어떤 단계를 따라야 하는지&nbsp;</div><div>안내해주실 수 있을까요?</div>', 0, 0, 47, 1, null),
('서비스 해지 문의', 'jh5', '현재 회사의 서비스를 사용 중이지만,&nbsp;<div>해지를 고려하고 있습니다.&nbsp;</div><div>해지 절차와 관련된 정보를 제공해주시면 감사하겠습니다.</div>', 0, 0, 48, 0, null),
('제품 비교 및 추천 요청', 'juhoon', '여러분의 회사에서 판매하는 제품 중에서&nbsp;<div>어떤 제품을 선택해야 할지 고민 중입니다.&nbsp;</div><div>제품 간 비교 정보와 추천 사항을 알려주실 수 있을까요?</div>', 0, 0, 49, 1, null),
('서비스 이용 방법 문의', 'male5', '회사의 새로운 서비스를 처음 사용하고 있으며,&nbsp;<div>이용 방법과 주요 기능에 대해 이해하기 어렵습니다.&nbsp;</div><div>서비스 사용에 도움이 될만한 자습서 또는&nbsp;</div><div>가이드를 제공해주실 수 있을까요?</div>', 0, 0, 50, 0, null),
('제품 사용에 대한 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품을 구매해 주셔서 감사합니다.&nbsp;</div><div>문제를 해결하기 위해 도움을 드리겠습니다.&nbsp;</div><div>어떤 제품을 사용 중이신지와 발생한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주실 수 있을까요?&nbsp;</div><div>특히 어떤 특정 기능이나 사용 방법에&nbsp;</div><div>어려움을 겪고 계신지 설명해주시면,&nbsp;</div><div>보다 정확한 도움을 드릴 수 있을 것입니다.</div>', 1, 1, 41, 1, '4hoons'),
('배송 관련 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>주문하신 제품의 배송에 관심 가져 주셔서 감사합니다.&nbsp;</div><div>배송 지연으로 불편을 끼쳐 드려 죄송합니다.&nbsp;</div><div>주문 번호나 제품 정보를 제공해주시면,&nbsp;</div><div>배송 상태를 확인하고 정확한 정보를 알려드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 42, 0, 'bukdu22'),
('웹사이트 오류 신고에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>웹사이트 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>오류가 발생한 페이지의 URL과 어떤 오류 메시지가&nbsp;</div><div>표시되는지 알려주시면, 더 자세한 조사와 해결을 위해&nbsp;</div><div>도움을 드릴 수 있을 것입니다.&nbsp;</div><div>가능하면 브라우저와 운영 체제 정보도 함께 알려주시면&nbsp;</div><div>도움이 될 것입니다.</div>', 1, 1, 43, 1, 'buksung4'),
('서비스 개선 제안에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 개선 제안 감사합니다.&nbsp;</div><div>우리는 사용자의 의견을 소중하게 생각하고 있으며,&nbsp;</div><div>제안 사항을 검토하여 서비스를 개선할 것입니다.&nbsp;</div><div>구체적인 제안 사항을 더 자세히 알려주시면 감사하겠습니다.&nbsp;</div><div>어떤 측면을 개선하고자 하는지 자세한 내용을 공유해주시면&nbsp;</div><div>더 나은 서비스 제공을 위해 노력하겠습니다.</div>', 1, 1, 44, 0, 'fivebean'),
('결제 오류 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>결제 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>먼저 어떤 결제 방법을 사용하셨는지와 오류 메시지나&nbsp;</div><div>상세한 오류 내용을 알려주시면,&nbsp;</div><div>문제 해결을 위한 조치를 취할 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며,&nbsp;</div><div>빠른 도움을 드릴 수 있도록 노력하겠습니다.</div>', 1, 1, 45, 1, 'fourbean'),
('제품 품질 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 품질 문제로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>손상된 부품이나 품질에 관한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주시면, 보증 및 수리에 대한&nbsp;</div><div>안내를 제공해드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 46, 0, 'hoons'),
('회원 가입 오류에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>회원 가입 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>회원 가입 절차에서 발생한 오류에 대한 자세한 설명과&nbsp;</div><div>사용하신 브라우저 및 운영 체제 정보를 알려주시면,&nbsp;</div><div>빠른 도움을 드릴 수 있을 것입니다. 불편을 드려 죄송하며,&nbsp;</div><div>해결을 위해 노력하겠습니다.</div>', 1, 1, 47, 1, 'jh1234'),
('서비스 해지 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 해지에 관심을 가져 주셔서 감사합니다.&nbsp;</div><div>서비스 해지 절차와 요구 사항에 대한 정보를&nbsp;</div><div>제공해 드릴 수 있습니다. 어떤 서비스를 해지하려고&nbsp;</div><div>하는지 알려주시면, 필요한 안내를 제공해드리겠습니다.</div>', 1, 1, 48, 0, 'jh5'),
('제품 비교 및 추천 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 49, 1, 'juhoon'),
('제품 문제 해결을 위한 기술 지원 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 50, 0, 'male5'),
('제품 사용에 대한 문의', '4hoons', '안녕하세요, 저는 최근에 여러분의 제품을 구매했습니다.&nbsp;<div>그러나 사용 중에 몇 가지 문제가 발생했습니다.&nbsp;</div><div>제품 설명서를 확인해보았지만 문제를 해결하지 못했습니다.&nbsp;</div><div>제품의 특정 기능과 사용 방법에 대한 도움을 주실 수 있을까요?</div>', 0, 0, 61, 0, null),
('배송 관련 문의', 'bukdu22', '제품을 주문한 지 얼마 되지 않아 배송 관련 문제가 발생했습니다.&nbsp;<div>배송이 예상보다 지연되고 있어서 걱정입니다.&nbsp;</div><div>배송 일정과 현재 진행 상황에 대한 정보를 알려주실 수 있을까요?</div>', 0, 0, 62, 1, null),
('웹사이트 오류 신고', 'buksung4', '회사의 웹사이트를 사용하면서 오류를 발견했습니다.&nbsp;<div>특정 페이지에서 로딩 문제와 함께 오류 메시지가 표시됩니다.&nbsp;</div><div>이 문제를 어떻게 해결할 수 있는지 안내해주실 수 있을까요?</div>', 0, 0, 63, 0, null),
('서비스 개선 제안', 'fivebean', '여러분의 서비스를 사용하면서&nbsp;<div>몇 가지 개선 사항을 제안하고자 합니다.&nbsp;<div>새로운 기능 추가와 사용자 경험 개선을 위한 아이디어가 있습니다.&nbsp;</div><div>이에 대한 피드백을 받을 수 있는 방법이 있을까요?</div></div>', 0, 0, 64, 1, null),
('결제 오류 문의', 'fourbean', '최근에 제품을 구매하려고 결제를 시도했으나,&nbsp;<div>결제 과정 중에 문제가 발생했습니다.&nbsp;</div><div>신용카드가 정상적으로 청구되지 않았으며,</div><div>&nbsp;주문이 완료되지 않았습니다.&nbsp;</div><div>결제 오류에 대한 도움이 필요합니다.</div>', 0, 0, 65, 0, null),
('제품 품질 문의', 'hoons', '제품을 사용하는 동안 몇 가지 품질 관련 문제가 발생했습니다.&nbsp;<div>부품이 손상되었거나 제품의 내구성에 문제가 있어 보입니다.&nbsp;</div><div>이에 대한 보증 및 수리 정책을 알려주실 수 있을까요?</div>', 0, 0, 66, 1, null),
('회원 가입 오류', 'jh1234', '회사의 회원 가입 페이지에서 오류가 발생하여&nbsp;<div>제대로 가입을 완료하지 못했습니다.&nbsp;</div><div>계정을 생성하려면 어떤 단계를 따라야 하는지&nbsp;</div><div>안내해주실 수 있을까요?</div>', 0, 0, 67, 0, null),
('서비스 해지 문의', 'jh5', '현재 회사의 서비스를 사용 중이지만,&nbsp;<div>해지를 고려하고 있습니다.&nbsp;</div><div>해지 절차와 관련된 정보를 제공해주시면 감사하겠습니다.</div>', 0, 0, 68, 1, null),
('제품 비교 및 추천 요청', 'juhoon', '여러분의 회사에서 판매하는 제품 중에서&nbsp;<div>어떤 제품을 선택해야 할지 고민 중입니다.&nbsp;</div><div>제품 간 비교 정보와 추천 사항을 알려주실 수 있을까요?</div>', 0, 0, 69, 0, null),
('서비스 이용 방법 문의', 'male5', '회사의 새로운 서비스를 처음 사용하고 있으며,&nbsp;<div>이용 방법과 주요 기능에 대해 이해하기 어렵습니다.&nbsp;</div><div>서비스 사용에 도움이 될만한 자습서 또는&nbsp;</div><div>가이드를 제공해주실 수 있을까요?</div>', 0, 0, 70, 1, null),
('제품 사용에 대한 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품을 구매해 주셔서 감사합니다.&nbsp;</div><div>문제를 해결하기 위해 도움을 드리겠습니다.&nbsp;</div><div>어떤 제품을 사용 중이신지와 발생한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주실 수 있을까요?&nbsp;</div><div>특히 어떤 특정 기능이나 사용 방법에&nbsp;</div><div>어려움을 겪고 계신지 설명해주시면,&nbsp;</div><div>보다 정확한 도움을 드릴 수 있을 것입니다.</div>', 1, 1, 61, 0, '4hoons'),
('배송 관련 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>주문하신 제품의 배송에 관심 가져 주셔서 감사합니다.&nbsp;</div><div>배송 지연으로 불편을 끼쳐 드려 죄송합니다.&nbsp;</div><div>주문 번호나 제품 정보를 제공해주시면,&nbsp;</div><div>배송 상태를 확인하고 정확한 정보를 알려드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 62, 1, 'bukdu22'),
('웹사이트 오류 신고에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>웹사이트 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>오류가 발생한 페이지의 URL과 어떤 오류 메시지가&nbsp;</div><div>표시되는지 알려주시면, 더 자세한 조사와 해결을 위해&nbsp;</div><div>도움을 드릴 수 있을 것입니다.&nbsp;</div><div>가능하면 브라우저와 운영 체제 정보도 함께 알려주시면&nbsp;</div><div>도움이 될 것입니다.</div>', 1, 1, 63, 0, 'buksung4'),
('서비스 개선 제안에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 개선 제안 감사합니다.&nbsp;</div><div>우리는 사용자의 의견을 소중하게 생각하고 있으며,&nbsp;</div><div>제안 사항을 검토하여 서비스를 개선할 것입니다.&nbsp;</div><div>구체적인 제안 사항을 더 자세히 알려주시면 감사하겠습니다.&nbsp;</div><div>어떤 측면을 개선하고자 하는지 자세한 내용을 공유해주시면&nbsp;</div><div>더 나은 서비스 제공을 위해 노력하겠습니다.</div>', 1, 1, 64, 1, 'fivebean'),
('결제 오류 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>결제 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>먼저 어떤 결제 방법을 사용하셨는지와 오류 메시지나&nbsp;</div><div>상세한 오류 내용을 알려주시면,&nbsp;</div><div>문제 해결을 위한 조치를 취할 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며,&nbsp;</div><div>빠른 도움을 드릴 수 있도록 노력하겠습니다.</div>', 1, 1, 65, 0, 'fourbean'),
('제품 품질 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 품질 문제로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>손상된 부품이나 품질에 관한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주시면, 보증 및 수리에 대한&nbsp;</div><div>안내를 제공해드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 66, 1, 'hoons'),
('회원 가입 오류에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>회원 가입 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>회원 가입 절차에서 발생한 오류에 대한 자세한 설명과&nbsp;</div><div>사용하신 브라우저 및 운영 체제 정보를 알려주시면,&nbsp;</div><div>빠른 도움을 드릴 수 있을 것입니다. 불편을 드려 죄송하며,&nbsp;</div><div>해결을 위해 노력하겠습니다.</div>', 1, 1, 67, 0, 'jh1234'),
('서비스 해지 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 해지에 관심을 가져 주셔서 감사합니다.&nbsp;</div><div>서비스 해지 절차와 요구 사항에 대한 정보를&nbsp;</div><div>제공해 드릴 수 있습니다. 어떤 서비스를 해지하려고&nbsp;</div><div>하는지 알려주시면, 필요한 안내를 제공해드리겠습니다.</div>', 1, 1, 68, 1, 'jh5'),
('제품 비교 및 추천 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 69, 0, 'juhoon'),
('제품 문제 해결을 위한 기술 지원 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 70, 1, 'male5'),
('제품 사용에 대한 문의', '4hoons', '안녕하세요, 저는 최근에 여러분의 제품을 구매했습니다.&nbsp;<div>그러나 사용 중에 몇 가지 문제가 발생했습니다.&nbsp;</div><div>제품 설명서를 확인해보았지만 문제를 해결하지 못했습니다.&nbsp;</div><div>제품의 특정 기능과 사용 방법에 대한 도움을 주실 수 있을까요?</div>', 0, 0, 81, 0, null),
('배송 관련 문의', 'bukdu22', '제품을 주문한 지 얼마 되지 않아 배송 관련 문제가 발생했습니다.&nbsp;<div>배송이 예상보다 지연되고 있어서 걱정입니다.&nbsp;</div><div>배송 일정과 현재 진행 상황에 대한 정보를 알려주실 수 있을까요?</div>', 0, 0, 82, 0, null),
('웹사이트 오류 신고', 'buksung4', '회사의 웹사이트를 사용하면서 오류를 발견했습니다.&nbsp;<div>특정 페이지에서 로딩 문제와 함께 오류 메시지가 표시됩니다.&nbsp;</div><div>이 문제를 어떻게 해결할 수 있는지 안내해주실 수 있을까요?</div>', 0, 0, 83, 0, null),
('서비스 개선 제안', 'fivebean', '여러분의 서비스를 사용하면서&nbsp;<div>몇 가지 개선 사항을 제안하고자 합니다.&nbsp;<div>새로운 기능 추가와 사용자 경험 개선을 위한 아이디어가 있습니다.&nbsp;</div><div>이에 대한 피드백을 받을 수 있는 방법이 있을까요?</div></div>', 0, 0, 84, 0, null),
('결제 오류 문의', 'fourbean', '최근에 제품을 구매하려고 결제를 시도했으나,&nbsp;<div>결제 과정 중에 문제가 발생했습니다.&nbsp;</div><div>신용카드가 정상적으로 청구되지 않았으며,</div><div>&nbsp;주문이 완료되지 않았습니다.&nbsp;</div><div>결제 오류에 대한 도움이 필요합니다.</div>', 0, 0, 85, 0, null),
('제품 품질 문의', 'hoons', '제품을 사용하는 동안 몇 가지 품질 관련 문제가 발생했습니다.&nbsp;<div>부품이 손상되었거나 제품의 내구성에 문제가 있어 보입니다.&nbsp;</div><div>이에 대한 보증 및 수리 정책을 알려주실 수 있을까요?</div>', 0, 0, 86, 1, null),
('회원 가입 오류', 'jh1234', '회사의 회원 가입 페이지에서 오류가 발생하여&nbsp;<div>제대로 가입을 완료하지 못했습니다.&nbsp;</div><div>계정을 생성하려면 어떤 단계를 따라야 하는지&nbsp;</div><div>안내해주실 수 있을까요?</div>', 0, 0, 87, 1, null),
('서비스 해지 문의', 'jh5', '현재 회사의 서비스를 사용 중이지만,&nbsp;<div>해지를 고려하고 있습니다.&nbsp;</div><div>해지 절차와 관련된 정보를 제공해주시면 감사하겠습니다.</div>', 0, 0, 88, 1, null),
('제품 비교 및 추천 요청', 'juhoon', '여러분의 회사에서 판매하는 제품 중에서&nbsp;<div>어떤 제품을 선택해야 할지 고민 중입니다.&nbsp;</div><div>제품 간 비교 정보와 추천 사항을 알려주실 수 있을까요?</div>', 0, 0, 89, 1, null),
('서비스 이용 방법 문의', 'male5', '회사의 새로운 서비스를 처음 사용하고 있으며,&nbsp;<div>이용 방법과 주요 기능에 대해 이해하기 어렵습니다.&nbsp;</div><div>서비스 사용에 도움이 될만한 자습서 또는&nbsp;</div><div>가이드를 제공해주실 수 있을까요?</div>', 0, 0, 90, 1, null),
('제품 사용에 대한 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품을 구매해 주셔서 감사합니다.&nbsp;</div><div>문제를 해결하기 위해 도움을 드리겠습니다.&nbsp;</div><div>어떤 제품을 사용 중이신지와 발생한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주실 수 있을까요?&nbsp;</div><div>특히 어떤 특정 기능이나 사용 방법에&nbsp;</div><div>어려움을 겪고 계신지 설명해주시면,&nbsp;</div><div>보다 정확한 도움을 드릴 수 있을 것입니다.</div>', 1, 1, 81, 0, '4hoons'),
('배송 관련 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>주문하신 제품의 배송에 관심 가져 주셔서 감사합니다.&nbsp;</div><div>배송 지연으로 불편을 끼쳐 드려 죄송합니다.&nbsp;</div><div>주문 번호나 제품 정보를 제공해주시면,&nbsp;</div><div>배송 상태를 확인하고 정확한 정보를 알려드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 82, 0, 'bukdu22'),
('웹사이트 오류 신고에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>웹사이트 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>오류가 발생한 페이지의 URL과 어떤 오류 메시지가&nbsp;</div><div>표시되는지 알려주시면, 더 자세한 조사와 해결을 위해&nbsp;</div><div>도움을 드릴 수 있을 것입니다.&nbsp;</div><div>가능하면 브라우저와 운영 체제 정보도 함께 알려주시면&nbsp;</div><div>도움이 될 것입니다.</div>', 1, 1, 83, 0, 'buksung4'),
('서비스 개선 제안에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 개선 제안 감사합니다.&nbsp;</div><div>우리는 사용자의 의견을 소중하게 생각하고 있으며,&nbsp;</div><div>제안 사항을 검토하여 서비스를 개선할 것입니다.&nbsp;</div><div>구체적인 제안 사항을 더 자세히 알려주시면 감사하겠습니다.&nbsp;</div><div>어떤 측면을 개선하고자 하는지 자세한 내용을 공유해주시면&nbsp;</div><div>더 나은 서비스 제공을 위해 노력하겠습니다.</div>', 1, 1, 84, 0, 'fivebean'),
('결제 오류 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>결제 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>먼저 어떤 결제 방법을 사용하셨는지와 오류 메시지나&nbsp;</div><div>상세한 오류 내용을 알려주시면,&nbsp;</div><div>문제 해결을 위한 조치를 취할 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며,&nbsp;</div><div>빠른 도움을 드릴 수 있도록 노력하겠습니다.</div>', 1, 1, 85, 0, 'fourbean'),
('제품 품질 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 품질 문제로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>손상된 부품이나 품질에 관한 문제에 대한&nbsp;</div><div>자세한 내용을 알려주시면, 보증 및 수리에 대한&nbsp;</div><div>안내를 제공해드릴 수 있을 것입니다.&nbsp;</div><div>불편을 드려 죄송하며, 빠른 해결을 위해 최선을 다하겠습니다.</div>', 1, 1, 86, 1, 'hoons'),
('회원 가입 오류에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>회원 가입 오류로 인한 불편을 드려 죄송합니다.&nbsp;</div><div>회원 가입 절차에서 발생한 오류에 대한 자세한 설명과&nbsp;</div><div>사용하신 브라우저 및 운영 체제 정보를 알려주시면,&nbsp;</div><div>빠른 도움을 드릴 수 있을 것입니다. 불편을 드려 죄송하며,&nbsp;</div><div>해결을 위해 노력하겠습니다.</div>', 1, 1, 87, 1, 'jh1234'),
('서비스 해지 문의에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>서비스 해지에 관심을 가져 주셔서 감사합니다.&nbsp;</div><div>서비스 해지 절차와 요구 사항에 대한 정보를&nbsp;</div><div>제공해 드릴 수 있습니다. 어떤 서비스를 해지하려고&nbsp;</div><div>하는지 알려주시면, 필요한 안내를 제공해드리겠습니다.</div>', 1, 1, 88, 1, 'jh5'),
('제품 비교 및 추천 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 89, 1, 'juhoon'),
('제품 문제 해결을 위한 기술 지원 요청에 대한 답변', 'admin', '<div>안녕하세요,</div><div><br></div><div>제품 선택을 고민하고 계시다니 좋습니다.&nbsp;</div><div>어떤 제품을 비교하려고 하는지와 사용 용도를 알려주시면,&nbsp;</div><div>비교 정보와 추천을 제공해드릴 수 있을 것입니다.&nbsp;</div><div>더 나은 결정을 내릴 수 있도록 도와드리겠습니다.</div>', 1, 1, 90, 1, 'male5');

create table files(
	file_id int auto_increment primary key,
    files varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    products_board_id int,
    notice_id int,
    inquiry_id int,
    complete boolean,
    member_id varchar(200)
);

insert into files(files, products_board_id, notice_id, inquiry_id, complete, member_id)
values
('bagstay_full.jpg', 0, 4, 0, true, 'admin'),
('bagstay_full (1).jpg', 0, 5, 0, true, 'admin'),
('bagstay_full (2).jpg', 0, 6, 0, true, 'admin'),
('bagstay_full (3).jpg', 0, 7, 0, true, 'admin'),
('membership_han_01.jpg', 0, 8, 0, true, 'admin'),
('membership_han_01 (1).jpg', 0, 9, 0, true, 'admin'),
('kakaopay28329.jpg', 0, 10, 0, true, 'admin'),
('kakaopay28329 (1).jpg', 0, 11, 0, true, 'admin');

create table categories(
	categories_id int auto_increment primary key,
    categories_name varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

insert into categories(categories_name)
values
('가방');

create table type(
	type_id int auto_increment primary key,
    type_name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    categories_id int
);

insert into type(type_name, categories_id) 
values 
("백팩",1),
("브리프케이스",1),
("숄더백",1),
("크로스백",1);

create table brand(
	brand_id int auto_increment primary key,
    brand_name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

insert into brand(brand_name)
values
('맥포스'),
('블루드쇼프'),
('레드윙'),
('엠아이에스');

create table bags(
    product_code int primary key,
    brand_id int,
    categories_id int,
    type_id int,
    bag_name varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_price int,
    bag_size_w int,
    bag_size_h int,
    bag_size_d int,
    bag_capacity int,
    bag_weight int,
    bag_outer_fabric varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_inner_fabric varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_zipper varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_buckle varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_comment varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_img1 varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_img2 varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_img3 varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bag_img4 varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    bags_production_day date,
    sells_amount int
);

insert into bags(product_code, brand_id, categories_id, type_id, bag_name, bag_price, bag_size_w, bag_size_h, bag_size_d,
            bag_capacity, bag_weight, bag_outer_fabric, bag_inner_fabric, bag_zipper, bag_buckle, bag_comment, bags_production_day,
            bag_img1, bag_img2, bag_img3, bag_img4, sells_amount)
            values
                (1111, 1, 1, 1, "알바트로스 EDC 3웨이백-카키", 328000, 330, 560, 230, 42, 1710, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "언제든 떠날 수 있습니다. 알바트로스 ECD 3웨이백","2023-05-10", "1111_img1.png", "1111_img2.png", "1111_img3.png", "1111_img4.png", 0),
                (1112, 1, 1, 1, "알바트로스 EDC 3웨이백-올리브", 328000, 330, 560, 230, 42, 1710, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "언제든 떠날 수 있습니다. 알바트로스 ECD 3웨이백","2023-05-10", "1112_img1.png", "1112_img2.png", "1112_img3.png", "1112_img4.png", 0),
                (1113, 1, 1, 1, "알바트로스 EDC 3웨이백-블랙", 328000, 330, 560, 230, 42, 1710, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "언제든 떠날 수 있습니다. 알바트로스 ECD 3웨이백","2023-05-10", "1113_img1.png", "1113_img2.png", "1113_img3.png", "1113_img4.png", 0),
                (1114, 1, 1, 1, "IMBS 파이오니아 백팩 - 블랙카모", 298000, 254, 457, 127, 18, 960, null, "500 데니어 워터 프루프 나일론",
                "YKK 지퍼", "듀라플렉스 스텔스 버클", "다양한 가능성이 일상에 주는 변화, 파이오니아 백팩","2023-05-10", "1114_img1.png", "1114_img2.png", "1114_img3.png", "1114_img4.png", 0),
            (1115, 1, 1, 1, "IMBS 파이오니아 백팩 - 왁스 브라운", 308000, 254, 457, 127, 18, 960, null, "500 데니어 워터 프루프 나일론",
                "YKK 지퍼", "듀라플렉스 스텔스 버클", "다양한 가능성이 일상에 주는 변화, 파이오니아 백팩","2023-05-10", "1115_img1.png", "1115_img2.png", "1115_img3.png", "1115_img4.png", 0),
            (1116, 1, 1, 1, "IMBS 파이오니아 백팩 - 왁스 블랙", 308000, 254, 457, 127, 18, 960, null, "500 데니어 워터 프루프 나일론",
                "YKK 지퍼", "듀라플렉스 스텔스 버클", "다양한 가능성이 일상에 주는 변화, 파이오니아 백팩","2023-05-10", "1116_img1.png", "1116_img2.png", "1116_img3.png", "1116_img4.png", 0),
            (1117, 1, 1, 1, "IMBS 파이오니아 백팩 - 블랙", 298000, 254, 457, 127, 18, 960, null, "500 데니어 워터 프루프 나일론",
                "YKK 지퍼", "듀라플렉스 스텔스 버클", "다양한 가능성이 일상에 주는 변화, 파이오니아 백팩","2023-05-10", "1117_img1.png", "1117_img2.png", "1117_img3.png", "1117_img4.png", 0),
            (1118, 1, 1, 1, "IMBS 태스크포스 백팩 - 왁스 브라운", 248000, 230, 431, 120, 15, 780, null, "500 데니어 워터 프루프 나일론",
                "YKK 지퍼", "듀라플렉스 스텔스 버클", "다양한 가능성이 일상에 주는 변화, 태스크포스 백팩","2023-05-10", "1118_img1.png", "1118_img2.png", "1118_img3.png", "1118_img4.png", 0),
                (1119, 1, 1, 1, "IMBS 태스크포스 백팩 - 왁스 블랙", 248000, 230, 431, 120, 15, 780, null, "500 데니어 워터 프루프 나일론",
                "YKK 지퍼", "듀라플렉스 스텔스 버클", "다양한 가능성이 일상에 주는 변화, 태스크포스 백팩","2023-05-10", "1119_img1.png", "1119_img2.png", "1119_img3.png", "1119_img4.png", 0),
                (11110, 1, 1, 1, "IMBS 태스크포스 백팩 - 블랙", 238000, 230, 431, 120, 15, 780, null, "500 데니어 워터 프루프 나일론",
                "YKK 지퍼", "듀라플렉스 스텔스 버클", "다양한 가능성이 일상에 주는 변화, 태스크포스 백팩","2023-05-10", "11110_img1.png", "11110_img2.png", "11110_img3.png", "11110_img4.png", 0),
            (1121, 1, 1, 2, "썬더버드 MPB - 블랙", 398000, 530, 330, 280, 49, 2380, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "움직이는 곳 어디든 나의 작업 공간 썬더버드 MPB","2023-05-10", "1121_img1.png", "1121_img2.png", "1121_img3.png", "1121_img4.png", 0),
            (1122, 1, 1, 2, "레오파드 랩탑 케이스 - 포리지", 178000, 235, 330, 100, null, 620, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "빠른 작업을 돕는 레오파드 랩탑 케이스","2023-05-10", "1122_img1.png", "1122_img2.png", "1122_img3.png", "1122_img4.png", 0),
                 (1123, 1, 1, 2, "레오파드 랩탑 케이스 - 카키 포리지", 178000, 235, 330, 100, null, 620, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "빠른 작업을 돕는 레오파드 랩탑 케이스","2023-05-10", "1123_img1.png", "1123_img2.png", "1123_img3.png", "1123_img4.png", 0),
                 (1124, 1, 1, 2, "레오파드 랩탑 케이스 - 블랙", 178000, 235, 330, 100, null, 620, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "빠른 작업을 돕는 레오파드 랩탑 케이스","2023-05-10", "1124_img1.png", "1124_img2.png", "1124_img3.png", "1124_img4.png", 0),
                 (1131, 1, 1, 3, "다이하드 트래블백 L - 블랙", 148000, 590, 280, 250, 30, 740, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "떠나는 당신의 모든 것을 담아드릴 다이하드 트래블백 L","2023-05-10", "1131_img1.png", "1131_img2.png", "1131_img3.png", "1131_img4.png", 0),
                  (1132, 1, 1, 3, "다이하드 트래블백 L - 카키 포리지", 148000, 590, 280, 250, 30, 740, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "떠나는 당신의 모든 것을 담아드릴 다이하드 트래블백 L","2023-05-10", "1132_img1.png", "1132_img2.png", "1132_img3.png", "1132_img4.png", 0),
                  (1141, 1, 1, 4, "맥파이 2 아이패드 캐리어 - 블랙", 138000, 190, 250, 95, NULL, 625, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "사용자의 두 손을 가볍게 맥파이2 아이패드 캐리어","2023-05-10", "1141_img1.png", "1141_img2.png", "1141_img3.png", "1141_img4.png", 0),
                  (1142, 1, 1, 4, "맥파이 2 아이패드 캐리어 - 데저트 카모", 138000, 190, 250, 95, NULL, 625, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "사용자의 두 손을 가볍게 맥파이2 아이패드 캐리어","2023-05-10", "1142_img1.png", "1142_img2.png", "1142_img3.png", "1142_img4.png", 0),
                  (1143, 1, 1, 4, "맥파이 2 아이패드 캐리어 - 포리지", 138000, 190, 250, 95, NULL, 625, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "사용자의 두 손을 가볍게 맥파이2 아이패드 캐리어","2023-05-10", "1143_img1.png", "1143_img2.png", "1143_img3.png", "1143_img4.png", 0),
                 (1144, 1, 1, 4, "스패로우 스몰백 - 블랙", 128000, 160, 240, 150, NULL, 560, "1050 데니어 발리스틱 나일론", "420 데니어 발리스틱 나일론",
                 "YKK 10RC 로켓 코일 지퍼", "듀라플렉스 스텔스 버클", "슬링백과 파우치의 모든 장점을 하나로 스패로우 스몰백","2023-05-10", "1144_img1.png", "1144_img2.png", "1144_img3.png", "1144_img4.png", 0),
            
                 (2141, 2, 1, 4, "뮤제트 스웨이드 가방 - 베이지", 367200, 400, 300, 100, NULL, NULL, NULL, "코튼",
                 NULL, NULL, "곡선적인 실루엣을 추구하는 1900년대의 상징적인 피셔맨 가방을 현대적으로 재해석한 디자인 입니다.","2023-01-10", "2141_img1.png", NULL, NULL, NULL, 0),
                 (2142, 2, 1, 4, "뮤제트 스웨이드 가방 - 베이지", 367200, 400, 300, 100, NULL, NULL, NULL, "코튼",
                 NULL, NULL, "곡선적인 실루엣을 추구하는 1900년대의 상징적인 피셔맨 가방을 현대적으로 재해석한 디자인 입니다.","2023-02-10", "2142_img1.png", NULL, NULL, NULL, 0),
                 (2143, 2, 1, 4, "뮤제트 스웨이드 가방 - 베이지", 367200, 400, 300, 100, NULL, NULL, NULL, "코튼",
                 NULL, NULL, "곡선적인 실루엣을 추구하는 1900년대의 상징적인 피셔맨 가방을 현대적으로 재해석한 디자인 입니다.","2023-03-10", "2143_img1.png", NULL, NULL, NULL, 0),
                 (2144, 2, 1, 4, "루이스 사첼백 - 누아르 블랙", 355300, 260, 230, 80, NULL, NULL, NULL, "소가죽",
                 NULL, NULL, "과거 상인들의 가방에서 영감을 받은 루이스 사첼백은 블루 드 쇼프의 남성용 및 여성용 작은 사첼백 입니다.","2023-04-10", "2144_img1.png", NULL, NULL, NULL, 0),
                 (2145, 2, 1, 4, "루이스 사첼백 - 쿠바 리브레", 355300, 260, 230, 80, NULL, NULL, NULL, "소가죽",
                 NULL, NULL, "과거 상인들의 가방에서 영감을 받은 루이스 사첼백은 블루 드 쇼프의 남성용 및 여성용 작은 사첼백 입니다.","2023-05-10", "2145_img1.png", NULL, NULL, NULL, 0),
                 
                 (3111, 3, 1, 1, "와코타 백팩 95067 - 브라이어 오일 슬릭", 300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                 NULL, NULL, NULL,"2022-08-10", "3111_img1.png", NULL, NULL, NULL, 0),
                 (3112, 3, 1, 1, "와코타 백팩 95068 - 카퍼 러프앤터프", 300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                 NULL, NULL, NULL,"2022-08-10", "3112_img1.png", NULL, NULL, NULL, 0),
                 
                 (4111, 1, 1, 1, "스퀘어 백팩 - 올리브 드랩", 118800, 30.5, 43, 14, 18, NULL, NULL, "1000 데니어 듀퐁 코브라 나일론(방수 우레탄 코팅)", "YKK 나일론 코일 지퍼", 
                 NULL, "밀스펙에 일상의 감성을 입히다", "2022-04-20", "4111_img1.png", NULL, NULL, NULL, 0),
                 (4112, 4, 1, 1, "스퀘어 백팩 - 코버트 우드랜드", 118800, 30.5, 43, 14, 18, NULL, NULL, "1000 데니어 듀퐁 코브라 나일론(방수 우레탄 코팅)", "YKK 나일론 코일 지퍼", 
                 NULL, "밀스펙에 일상의 감성을 입히다", "2022-04-20", "4112_img1.png", NULL, NULL, NULL, 0),
                 (4113, 4, 1, 1, "스퀘어 백팩 - 포리지", 118800, 30.5, 43, 14, 18, NULL, NULL, "1000 데니어 듀퐁 코브라 나일론(방수 우레탄 코팅)", "YKK 나일론 코일 지퍼", 
                 NULL, "밀스펙에 일상의 감성을 입히다", "2022-04-20", "4113_img1.png", NULL, NULL, NULL, 0),
                 (4114, 4, 1, 1, "스퀘어 백팩 - 멀티캠", 118800, 30.5, 43, 14, 18, NULL, NULL, "1000 데니어 듀퐁 코브라 나일론(방수 우레탄 코팅)", "YKK 나일론 코일 지퍼", 
                 NULL, "밀스펙에 일상의 감성을 입히다", "2022-04-20", "4114_img1.png", NULL, NULL, NULL, 0),
                 (4115, 4, 1, 1, "스퀘어 백팩 - 코요테 탄", 118800, 30.5, 43, 14, 18, NULL, NULL, "1000 데니어 듀퐁 코브라 나일론(방수 우레탄 코팅)", "YKK 나일론 코일 지퍼", 
                 NULL, "밀스펙에 일상의 감성을 입히다", "2022-04-20", "4115_img1.png", NULL, NULL, NULL, 0),
                 (4116, 4, 1, 1, "스퀘어 백팩 - 우드랜드 카모", 118800, 30.5, 43, 14, 18, NULL, NULL, "1000 데니어 듀퐁 코브라 나일론(방수 우레탄 코팅)", "YKK 나일론 코일 지퍼", 
                 NULL, "밀스펙에 일상의 감성을 입히다", "2022-04-20", "4116_img1.png", NULL, NULL, NULL, 0);

create table products_board(
	products_board_id int auto_increment primary key,
    products_board_status int,
    type_id int,
    categories_id int,
    brand_id int,
    intro varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    contents text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    address_info varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    guide varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    product_code int,
    review_count int,
    sells_amount int,
    products_board_reg_date timestamp default now()
);

insert into products_board(products_board_status, type_id, categories_id, brand_id, intro, contents, address_info, guide, product_code, review_count, sells_amount, products_board_reg_date)
values
(2, 1, 1, 1, '언제든 떠날 수 있습니다.
 알바트로스 EDC 3웨이백
 
 EDC는 Everyday Carrier의 약자로, 알바트로스 3웨이 백을 축소한 42L 사이즈의 중형 더플백입니다. 조금 더 일상생활에서 사용할 수 있도록 제작되었으며, 사이즈와 무게는 줄이고 알바트로스 3웨이 기능은 유지하였습니다. 또한, 미국 연방항공국(FAA)의 기내 반입 수화물 규격에 맞는 사이즈로 제작되어 기내 반입이 자유롭습니다.', 
'알바트로스 EDC 3웨이백-카키<div><span><img src="/upFile/0613K.jpg" alt="등록된 이미지"><img src="/upFile/0613_detail_01.jpg" alt="등록된 이미지"><img src="/upFile/0613_colors.jpg" alt="등록된 이미지"><img src="/upFile/0613_detail_03.jpg" alt="등록된 이미지"><img src="/upFile/0613_detail_02.jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.
 
 
 접수 방법
 1. 마이 페이지-> 주문배송조회에서 신청 가능
 2. 마이 페이지 -> 1:1 문의 작성
 
 환불안내
 * 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.
 * 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.', 1111, 4, 0, '2022-09-14 21:59:56'),
(2, 1, 1, 1, '언제든 떠날 수 있습니다.
 알바트로스 EDC 3웨이백
 
 EDC는 Everyday Carrier의 약자로, 알바트로스 3웨이 백을 축소한 42L 사이즈의 중형 더플백입니다. 조금 더 일상생활에서 사용할 수 있도록 제작되었으며, 사이즈와 무게는 줄이고 알바트로스 3웨이 기능은 유지하였습니다. 또한, 미국 연방항공국(FAA)의 기내 반입 수화물 규격에 맞는 사이즈로 제작되어 기내 반입이 자유롭습니다.', 
'<div style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; color: rgb(112, 112, 112); font-size: 12px; letter-spacing: -0.12px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">알바트로스 EDC 3웨이백-올리브<span><img src="/upFile/0613_detail_03 (1).jpg" alt="등록된 이미지"><img src="/upFile/logointro (1).jpg" alt="등록된 이미지"><img src="/upFile/0613G.jpg" alt="등록된 이미지"><img src="/upFile/0613_detail_02 (1).jpg" alt="등록된 이미지"><img src="/upFile/0613_detail_01 (1).jpg" alt="등록된 이미지"></span></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.
 
 
 접수 방법
 1. 마이 페이지-> 주문배송조회에서 신청 가능
 2. 마이 페이지 -> 1:1 문의 작성
 
 환불안내
 * 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.
 * 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.', 1112, 7, 0, '2022-10-14 22:02:52'),
(2, 1, 1, 1, '당신의 모든 순간이 모험으로,
 알바트로스 3웨이백
 
 57L의 압도적인 사이즈와 특별한 디자인의 카리스마 넘치는 대형 더플백 타입의 여행용 가방입니다. 알바트로스의 가장 큰 장점인 3웨이 스트랩은 3가지 방법으로 착용이 가능하여 편의성과 실용성을 더해 넉넉한 수납공간 속에 필요한 짐을 넣어 여행을 떠날 수 있습니다.', 
'알바트로스 EDC 3웨이백-블랙<div><span><img src="/upFile/0608_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/0608_detail_03.jpg" alt="등록된 이미지"><img src="/upFile/0608K.jpg" alt="등록된 이미지"><img src="/upFile/logointro (2).jpg" alt="등록된 이미지"><img src="/upFile/0608_detail_01.jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.
 
 
 접수 방법
 1. 마이 페이지-> 주문배송조회에서 신청 가능
 2. 마이 페이지 -> 1:1 문의 작성
 
 환불안내
 * 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.
 * 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.', 1113, 7, 0, '2022-11-14 22:05:05'),
(2, 1, 1, 1, '다양한 가능성이 일상에 주는 변화,
 태스크 포스 백팩
 
 맥포스를 상징하는 뛰어난 기능성과 사용자에게 더욱 다양한 선택의 즐거움을 주는 IMBS 태스크 포스 백팩입니다. 가벼운 무게와 교환식 모듈 백팩 시스템을 추가하여 매일매일의 평범한 일상과 도심을 떠난 활동적인 취미생활에 다양한 선택을 주어 즐거운 변화를 드립니다.', 
'IMBS 태스크포스 백팩 - 블랙<div><span><img src="/upFile/logointro (19).jpg" alt="등록된 이미지"><img src="/upFile/A7106B02.jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_03 (2).jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_02 (2).jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_01 (2).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 11110, 7, 0, '2022-02-14 22:42:13'),
(2, 1, 1, 1, '다양한 가능성이 일상에 주는 변화,
 파이오니아 백팩
 
 맥포스를 상징하는 뛰어난 기능성과 사용자에게 더욱 다양한 선택의 즐거움을 주는 IMBS 파이오니아 백팩입니다. 가벼운 무게와 교환식 모듈 백팩 시스템을 추가하여 매일매일의 평범한 일상과 도심을 떠난 활동적인 취미생활에 다양한 선택을 주어 즐거운 변화를 드립니다.', 
'IMBS 파이오니아 백팩 - 블랙카모<div><span><img src="/upFile/7101_detail_03.jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/A7101BC.jpg" alt="등록된 이미지"><img src="/upFile/logointro (3).jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_01.jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.
 
 
 접수 방법
 1. 마이 페이지-> 주문배송조회에서 신청 가능
 2. 마이 페이지 -> 1:1 문의 작성
 
 환불안내
 * 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.
 * 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.', 1114, 5, 0, '2022-12-14 22:07:16'),
(2, 1, 1, 1, '다양한 가능성이 일상에 주는 변화,
 파이오니아 백팩
 
 맥포스를 상징하는 뛰어난 기능성과 사용자에게 더욱 다양한 선택의 즐거움을 주는 IMBS 파이오니아 백팩입니다. 가벼운 무게와 교환식 모듈 백팩 시스템을 추가하여 매일매일의 평범한 일상과 도심을 떠난 활동적인 취미생활에 다양한 선택을 주어 즐거운 변화를 드립니다.', 
'IMBS 파이오니아 백팩 - 왁스 브라운<div><span><img src="/upFile/7101_detail_03 (1).jpg" alt="등록된 이미지"><img src="/upFile/W7101BR.jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_01 (1).jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_02 (1).jpg" alt="등록된 이미지"><img src="/upFile/logointro (4).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.
 
 
 접수 방법
 1. 마이 페이지-> 주문배송조회에서 신청 가능
 2. 마이 페이지 -> 1:1 문의 작성
 
 환불안내
 * 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.
 * 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.', 1115, 6, 0, '2023-01-14 22:10:37'),
(2, 1, 1, 1, '다양한 가능성이 일상에 주는 변화,
 파이오니아 백팩
 
 맥포스를 상징하는 뛰어난 기능성과 사용자에게 더욱 다양한 선택의 즐거움을 주는 IMBS 파이오니아 백팩입니다. 가벼운 무게와 교환식 모듈 백팩 시스템을 추가하여 매일매일의 평범한 일상과 도심을 떠난 활동적인 취미생활에 다양한 선택을 주어 즐거운 변화를 드립니다.', 
'IMBS 파이오니아 백팩 - 왁스 블랙<div><span><img src="/upFile/7101_detail_03 (2).jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_01 (2).jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_02 (2).jpg" alt="등록된 이미지"><img src="/upFile/W7101B.jpg" alt="등록된 이미지"><img src="/upFile/logointro (5).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.
 
 
 접수 방법
 1. 마이 페이지-> 주문배송조회에서 신청 가능
 2. 마이 페이지 -> 1:1 문의 작성
 
 환불안내
 * 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.
 * 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.', 1116, 6, 0, '2023-02-14 22:12:14'),
(2, 1, 1, 1, '다양한 가능성이 일상에 주는 변화,
 파이오니아 백팩
 
 맥포스를 상징하는 뛰어난 기능성과 사용자에게 더욱 다양한 선택의 즐거움을 주는 IMBS 파이오니아 백팩입니다. 가벼운 무게와 교환식 모듈 백팩 시스템을 추가하여 매일매일의 평범한 일상과 도심을 떠난 활동적인 취미생활에 다양한 선택을 주어 즐거운 변화를 드립니다.', 
'IMBS 파이오니아 백팩 - 블랙<div><span><img src="/upFile/7101_detail_03 (3).jpg" alt="등록된 이미지"><img src="/upFile/A7101B02.jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_02 (3).jpg" alt="등록된 이미지"><img src="/upFile/7101_detail_01 (3).jpg" alt="등록된 이미지"><img src="/upFile/logointro (6).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.
 
 
 접수 방법
 1. 마이 페이지-> 주문배송조회에서 신청 가능
 2. 마이 페이지 -> 1:1 문의 작성
 
 환불안내
 * 환불시 결제하신 방법에 따라 환불 시기 및 금액 차이가 발생 할 수 있습니다.
 * 카드 결제 취소는 당일 결제 취소가 아닌 경우 카드사와 VAN사의 확인 절차가 필요하며 5일~7일 (공휴일 제외) 소요됩니다.', 1117, 7, 0, '2023-03-14 22:13:55'),
(2, 1, 1, 1, '다양한 가능성이 일상에 주는 변화,
 태스크 포스 백팩
 
 맥포스를 상징하는 뛰어난 기능성과 사용자에게 더욱 다양한 선택의 즐거움을 주는 IMBS 태스크 포스 백팩입니다. 가벼운 무게와 교환식 모듈 백팩 시스템을 추가하여 매일매일의 평범한 일상과 도심을 떠난 활동적인 취미생활에 다양한 선택을 주어 즐거운 변화를 드립니다.', 
'IMBS 태스크포스 백팩 - 왁스 브라운<div><span><img src="/upFile/W7106BR.jpg" alt="등록된 이미지"><img src="/upFile/logointro (7).jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_01.jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_03.jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1118, 5, 0, '2023-04-14 22:17:53'),
(2, 2, 1, 1, '다양한 가능성이 일상에 주는 변화,
 태스크 포스 백팩
 
 맥포스를 상징하는 뛰어난 기능성과 사용자에게 더욱 다양한 선택의 즐거움을 주는 IMBS 태스크 포스 백팩입니다. 가벼운 무게와 교환식 모듈 백팩 시스템을 추가하여 매일매일의 평범한 일상과 도심을 떠난 활동적인 취미생활에 다양한 선택을 주어 즐거운 변화를 드립니다.
 ', 
'IMBS 태스크포스 백팩 - 왁스 블랙<div><span><img src="/upFile/7106_detail_01 (1).jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_02 (1).jpg" alt="등록된 이미지"><img src="/upFile/W7106B.jpg" alt="등록된 이미지"><img src="/upFile/logointro (8).jpg" alt="등록된 이미지"><img src="/upFile/7106_detail_03 (1).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1119, 7, 0, '2023-05-14 22:19:31'),
(2, 2, 1, 1, '움직이는 곳 어디든 나의 작업 공간
 썬더버드 MPB
 
 움직이는 사무실이라고 불리는 오피스가방 모델입니다. 탄탄한 외관과 거대한 사이즈, 넉넉한 수납공간으로 공공기관부터 전문기관 가리지 않고 많은 전문적인 사용자를 보유하고 있습니다.', 
'썬더버드 MPB - 블랙<div><span><img src="/upFile/0620_detail_01.jpg" alt="등록된 이미지"><img src="/upFile/0620_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/0620B.jpg" alt="등록된 이미지"><img src="/upFile/0620_detail_03.jpg" alt="등록된 이미지"><img src="/upFile/logointro (9).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1121, 8, 0, '2023-06-14 22:21:14'),
(2, 2, 1, 1, '빠른 작업 수행을 돕는
 레오파드 랩탑 케이스
 
 노트북과 디지털 기기 사용자를 위한 모델입니다. 한 손으로 한 번에 길이 조절이 가능한 원핸드 밴드와 안전벨트 어깨 끈을 이용하여 견고하고 편안한 움직임을 제공합니다.', 
'레오파드 랩탑 케이스 - 포리지<div><span><img src="/upFile/6606_detail_01.jpg" alt="등록된 이미지"><img src="/upFile/6606F.jpg" alt="등록된 이미지"><img src="/upFile/6606_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/logointro (10).jpg" alt="등록된 이미지"><img src="/upFile/6606_detail_03.jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1122, 9, 0, '2023-07-14 22:23:13'),
(2, 2, 1, 1, '빠른 작업 수행을 돕는
 레오파드 랩탑 케이스
 
 노트북과 디지털 기기 사용자를 위한 모델입니다. 한 손으로 한 번에 길이 조절이 가능한 원핸드 밴드와 안전벨트 어깨 끈을 이용하여 견고하고 편안한 움직임을 제공합니다.', 
'레오파드 랩탑 케이스 - 카키 포리지<div><span><img src="/upFile/6606_detail_02 (1).jpg" alt="등록된 이미지"><img src="/upFile/6606KF.jpg" alt="등록된 이미지"><img src="/upFile/6606_detail_01 (1).jpg" alt="등록된 이미지"><img src="/upFile/logointro (11).jpg" alt="등록된 이미지"><img src="/upFile/6606_detail_03 (1).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1123, 6, 0, '2023-08-14 22:27:06'),
(2, 3, 1, 1, '빠른 작업 수행을 돕는
 레오파드 랩탑 케이스
 
 노트북과 디지털 기기 사용자를 위한 모델입니다. 한 손으로 한 번에 길이 조절이 가능한 원핸드 밴드와 안전벨트 어깨 끈을 이용하여 견고하고 편안한 움직임을 제공합니다.', 
'레오파드 랩탑 케이스 - 블랙<div><span><img src="/upFile/6606_detail_02 (2).jpg" alt="등록된 이미지"><img src="/upFile/6606_detail_01 (2).jpg" alt="등록된 이미지"><img src="/upFile/logointro (12).jpg" alt="등록된 이미지"><img src="/upFile/6606B.jpg" alt="등록된 이미지"><img src="/upFile/6606_detail_03 (2).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1124, 6, 0, '2023-09-14 22:28:23'),
(2, 3, 1, 1, '떠나는 당신의 모든 것을 담아드릴
 다이하드 트래블백 L
 
 다양한 용도로 사용이 가능한 보스턴백 스타일의 가방입니다. 견고하고 튼튼하게 만들어져 사용자가 경험할 어떠한 환경에서도 기능성과 편리성을 유지해 줍니다.', 
'다이하드 트래블백 L - 블랙<div><span><img src="/upFile/0650B.jpg" alt="등록된 이미지"><img src="/upFile/diehard_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/diehard_detail_01.jpg" alt="등록된 이미지"><img src="/upFile/undefined" alt="등록된 이미지"><img src="/upFile/logointro (13).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1131, 7, 0, '2022-08-14 22:30:56'),
(2, 4, 1, 1, '떠나는 당신의 모든 것을 담아드릴
 다이하드 트래블백 L
 
 다양한 용도로 사용이 가능한 보스턴백 스타일의 가방입니다. 견고하고 튼튼하게 만들어져 사용자가 경험할 어떠한 환경에서도 기능성과 편리성을 유지해 줍니다.', 
'다이하드 트래블백 L - 카키 포리지<div><span><img src="/upFile/0650KF.jpg" alt="등록된 이미지"><img src="/upFile/diehard_detail_01 (1).jpg" alt="등록된 이미지"><img src="/upFile/diehard_detail_02 (1).jpg" alt="등록된 이미지"><img src="/upFile/undefined" alt="등록된 이미지"><img src="/upFile/logointro (14).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1132, 8, 0, '2023-07-14 22:33:12'),
(2, 4, 1, 1, '사용자의 두 손을 가볍게
 맥파이 2 아이패드 캐리어
 
 일상의 가벼운 소지품을 위한 슬림하고 작은 숄더백입니다. 뒷면의 벨크로 스트랩으로 허리에 착용하거나 다른 맥포스 제품에 결착할 수 있습니다. 어깨 끈을 분리하여 오거나이저 용도로 사용 가능합니다.', 
'맥파이2 아이패드 캐리어 - 블랙<div><span><img src="/upFile/0211_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/0211_detail_01.jpg" alt="등록된 이미지"><img src="/upFile/0211B.jpg" alt="등록된 이미지"><img src="/upFile/logointro (15).jpg" alt="등록된 이미지"><img src="/upFile/undefined" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1141, 5, 0, '2022-06-14 22:34:56'),
(2, 4, 1, 1, '사용자의 두 손을 가볍게
 맥파이 2 아이패드 캐리어
 
 일상의 가벼운 소지품을 위한 슬림하고 작은 숄더백입니다. 뒷면의 벨크로 스트랩으로 허리에 착용하거나 다른 맥포스 제품에 결착할 수 있습니다. 어깨 끈을 분리하여 오거나이저 용도로 사용 가능합니다.', 
'맥파이2 아이패드 캐리어 - 데저트 카모<div><span><img src="/upFile/0211_detail_03.jpg" alt="등록된 이미지"><img src="/upFile/0211_detail_01 (1).jpg" alt="등록된 이미지"><img src="/upFile/0211DC.jpg" alt="등록된 이미지"><img src="/upFile/0211_detail_02 (1).jpg" alt="등록된 이미지"><img src="/upFile/logointro (16).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1142, 7, 0, '2023-05-14 22:36:20'),
(2, 4, 1, 1, '사용자의 두 손을 가볍게
 맥파이 2 아이패드 캐리어
 
 일상의 가벼운 소지품을 위한 슬림하고 작은 숄더백입니다. 뒷면의 벨크로 스트랩으로 허리에 착용하거나 다른 맥포스 제품에 결착할 수 있습니다. 어깨 끈을 분리하여 오거나이저 용도로 사용 가능합니다.', 
'맥파이 2 아이패드 캐리어 - 포리지<div><span><img src="/upFile/0211_detail_03 (1).jpg" alt="등록된 이미지"><img src="/upFile/0211F.jpg" alt="등록된 이미지"><img src="/upFile/0211_detail_01 (2).jpg" alt="등록된 이미지"><img src="/upFile/0211_detail_02 (2).jpg" alt="등록된 이미지"><img src="/upFile/logointro (17).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1143, 8, 0, '2023-04-14 22:37:36'),
(2, 1, 1, 1, '슬링백과 파우치의 모든 장점을 하나로
 스패로우 스몰백
 
 맥포스 가방 라인 중 가장 작은 숄더백으로 여행 시 휴대하기 편한 보조 가방입니다. 작은 물건들을 수납할 수 있으며 어깨 끈을 탈착하여 다른 모델에 부착하거나 파우치로 사용이 가능합니다.', 
'스패로우 스몰백 - 블랙<div><span><img src="/upFile/0406B.jpg" alt="등록된 이미지"><img src="/upFile/0406_detail_01.jpg" alt="등록된 이미지"><img src="/upFile/0406_detail_02.jpg" alt="등록된 이미지"><img src="/upFile/undefined" alt="등록된 이미지"><img src="/upFile/logointro (18).jpg" alt="등록된 이미지"></span><br></div>', 
'[배송안내]
 배송 방법 : CJ 대한통운 (택배)
 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생
 배송 지역 : 전국(일부 지역 제외)
 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다.
 *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.', 
'[교환/반품/환불 안내]
 * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다.
 * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다.
 * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다.
 * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다.
 * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다.
   타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.', 1144, 9, 0, '2023-03-14 22:39:43'),

(2, 4, 1, 2, '뮤제트 스웨이드 가방 M
 
 곡선적인 실루엣을 추구하는 1900년대의 상징적인 피셔맨 가방을 현대적으로 재해석한 디자인입니다. 프랑스 장인의 핸드메이드 제품답게 계절과 유행에 영향을 받지않는 디테일이 뛰어난 클래식 아이템입니다.',
 '뮤제트 스웨이드 가방 M<div><span><img src="/upFile/logointro_musette.jpg" alt="등록된 이미지"><img src="/upFile/BDC-S22054.jpg" alt="등록된 이미지"><img src="/upFile/brandstory.jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 2141, 0, 0, '2023-09-17 23:46:22'),
(2, 4, 1, 2, '뮤제트 스웨이드 가방 M
 
 곡선적인 실루엣을 추구하는 1900년대의 상징적인 피셔맨 가방을 현대적으로 재해석한 디자인입니다. 프랑스 장인의 핸드메이드 제품답게 계절과 유행에 영향을 받지않는 디테일이 뛰어난 클래식 아이템입니다.',
 '뮤제트 스웨이드 가방 M<div><span><img src="/upFile/logointro_musette (1).jpg" alt="등록된 이미지"><img src="/upFile/brandstory (1).jpg" alt="등록된 이미지"><img src="/upFile/BDC-S22054 (1).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 2142, 0, 0, '2023-09-17 23:55:38'),
(2, 4, 1, 2, '뮤제트 스웨이드 가방 M
 
 곡선적인 실루엣을 추구하는 1900년대의 상징적인 피셔맨 가방을 현대적으로 재해석한 디자인입니다. 프랑스 장인의 핸드메이드 제품답게 계절과 유행에 영향을 받지않는 디테일이 뛰어난 클래식 아이템입니다.',
 '뮤제트 스웨이드 가방 M<div><span><img src="/upFile/logointro_musette (2).jpg" alt="등록된 이미지"><img src="/upFile/BDC-S22054 (2).jpg" alt="등록된 이미지"><img src="/upFile/brandstory (2).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 2143, 0, 0, '2023-09-17 23:56:27'),
 (2, 4, 1, 2, '루이스 샤첼백
 
 과거 상인들의 가방에서 영감을 받은 루이스 샤첼백은 블루 드 쇼프의 남성용 및 여성용 작은 샤첼백입니다. 편리하고 빠르게 사용 할 수 있도록 설계되었습니다. 프랑스 장인의 핸드메이드 제품답게 계절과 유행에 영향을 받지않는 디테일이 뛰어난 클래식 아이템입니다.',
 '루이스 샤첼백<img src="/upFile/logointro_satchelbag.jpg" alt="등록된 이미지"><img src="/upFile/BDC-S19010.jpg" alt="등록된 이미지">',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 2144, 0, 0, '2023-09-18 00:03:55'),
(2, 4, 1, 2, '루이스 샤첼백
 
 과거 상인들의 가방에서 영감을 받은 루이스 샤첼백은 블루 드 쇼프의 남성용 및 여성용 작은 샤첼백입니다. 편리하고 빠르게 사용 할 수 있도록 설계되었습니다. 프랑스 장인의 핸드메이드 제품답게 계절과 유행에 영향을 받지않는 디테일이 뛰어난 클래식 아이템입니다.',
 '루이스 사첼백<div><span><img src="/upFile/BDC-S19011.jpg" alt="등록된 이미지"><img src="/upFile/logointro_satchelbag (1).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 2145, 0, 0, '2023-09-18 00:05:22'),
(2, 1, 1, 3, '와코타 백팩 95067 - 브라이어 오일 슬릭',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">와코타 백팩 95067 - 브라이어 오일 슬릭</h3><div><span><img src="/upFile/logointro_satchelbag (2).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 3111, 0, 0, '2023-09-18 00:08:07'),
(2, 1, 1, 3, '와코타 백팩 95068 - 카퍼 러프앤터프',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">와코타 백팩 95068 - 카퍼 러프앤터프</h3><div><span><img src="/upFile/logointro_satchelbag (3).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 3112, 0, 0, '2023-09-18 00:09:06'),
(2, 1, 1, 4, '스퀘어 백팩 - 올리브 드랩',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">스퀘어 백팩 - 올리브 드랩</h3><div><span><img src="/upFile/MIS-1005-OD.jpg" alt="등록된 이미지"><img src="/upFile/logointro (20).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 4111, 0, 0, '2023-09-18 00:11:07'),
(2, 1, 1, 4, '스퀘어 백팩 - 코버트 우드랜드',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">스퀘어 백팩 - 코버트 우드랜드</h3><div><span><img src="/upFile/MIS-1005-CW.jpg" alt="등록된 이미지"><img src="/upFile/logointro (21).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 4112, 0, 0, '2023-09-18 00:12:10'),
(2, 1, 1, 4, '스퀘어 백팩-포리지',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">스퀘어 백팩-포리지</h3><div><span><img src="/upFile/MIS-1005-FA.jpg" alt="등록된 이미지"><img src="/upFile/logointro (22).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 4113, 0, 0, '2023-09-18 00:13:00'),
(2, 1, 1, 4, '스퀘어 백팩 - 멀티캠',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">스퀘어 백팩 - 멀티캠</h3><div><span><img src="/upFile/logointro (23).jpg" alt="등록된 이미지"><img src="/upFile/MIS-1005-MU.jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 4114, 0, 0, '2023-09-18 00:14:00'),
(2, 1, 1, 4, '스퀘어 백팩 - 코요테 탄',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">스퀘어 백팩 - 코요테 탄</h3><div><span><img src="/upFile/MIS-1005-CT.jpg" alt="등록된 이미지"><img src="/upFile/logointro (24).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 4115, 0, 0, '2023-09-18 00:15:00'),
(2, 1, 1, 4, '스퀘어 백팩 - 우드랜드 카모',
 '<h3 style="font-family: Pretendard, sans-serif; margin: 0px; padding: 0px; width: 405px; font-size: 25px; word-break: break-all; font-weight: 500; letter-spacing: -0.01em; line-height: 30px; background-color: rgb(255, 255, 255); user-select: auto; outline: none !important;">스퀘어 백팩 - 우드랜드 카모</h3><div><span><img src="/upFile/MIS-1005-WO.jpg" alt="등록된 이미지"><img src="/upFile/logointro (25).jpg" alt="등록된 이미지"></span><br></div>',
 '[배송안내] 배송 방법 : CJ 대한통운 (택배) 배송 비용 : 3,000원(5만원 이상 구매 시 무료 배송) / 일부 지역은 별도의 추가 금액 발생 배송 지역 : 전국(일부 지역 제외) 배송 기간 : 평일 기준 PM 12시 이전 입금 확인 주문건 당일 출고 / 결제일 기준 2일 ~ 5일 (주말/공휴일 제외)_상품 재고 상황에 따라 다소 지연될 수 있으며 양해 부탁 드립니다. *배송은 보유하고 있는 재고에 따라 물류센터, 가로수길 매장에서 출고 됩니다.',
 '[교환/반품/환불 안내] * 상품 수령일로부터 7일 이내로(주말 및 공휴일 제외) 반품신청이 가능하며 상품이 서플라이루트 본사로 도착해야만 교환 및 반품이 가능합니다. * 초기 불량 상품의 경우 당사의 확인 후 교환 및 환불 처리가 가능하며 상품을 보내기 전 "1:1문의" 또는 "서플라이루트 소비자상담실(070-4706-0094)"로 접수 부탁 드립니다. * 타 사이트에서 구매하신 경우, 구매처의 고객센터로 교환 및 반품 신청해 주시기 바랍니다. * 상품 택 제거 / 박스 혹은 패키지 훼손 / 세탁 및 수선 / 착용으로 인한 오염 및 구김이 심하여 재판매가 어려울 경우에는 교환 및 환불이 불가능합니다. * 단순 변심에 의한 교환 및 반품시 왕복 택배비 6,000원이 부담되십니다. 타 택배사로 보내실 경우 선불 계산 후 편도 택배비 3,000원이 부담되십니다.',
 4116, 0, 0, '2023-09-18 00:15:53');
 
 create table member(
	member_id varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci primary key,
    member_pw varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    member_name varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    member_email varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    member_phone varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    member_reg_date timestamp default now(),
    member_status varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

create table address(
	address_id int auto_increment primary key,
    addr_name varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    address varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    zip_code varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    detail_address varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    member_id varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    address_phone varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    basic_addr int,
    address_msg varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

create table cart(
	cart_id int auto_increment primary key,
    member_id varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    product_code int,
    products_count int,
    sum_price int,
    pay_status int
);

insert into member (member_id, member_pw, member_name, member_email, member_phone, member_reg_date, member_status)
values
("4hoons","1234","사주훈","4hoons@google.com","010-7865-4562","2023-01-14 18:52:40", null),
("bukdu22","1234","북두칠성","bukdu22@nate.com","010-6434-2341","2023-02-14 18:56:25", null),
("buksung4","1234","정북성","buksung4@nate.com","010-2976-6435","2023-03-14 18:55:21", null),
("fivebean","1234","파이브빈","fivebean@google.com","010-6657-6586","2021-09-14 18:47:08", null),
("fourbean","1234","포빈","fourbean@nate.com","010-4423-1242","2023-04-14 18:46:37", null),
("hoons","1234","삼주훈","hoons@naver.com","010-6546-7687","2021-05-14 18:52:03", null),
("jh1234","1234","한주훈","jh1234@google.com","010-5252-3244","2023-02-14 18:48:36", null),
("jh5","1234","오주훈","jh5@nate.com","010-6585-4353","2023-09-14 18:53:09", null),
("juhoon","1234","둘주훈","hbh1234@google.com","010-5243-3532","2019-11-14 18:51:18", null),
("jwasung","1234","정좌성","jwasung@naver.com","010-4352-2412","2023-12-14 18:54:30", null),
("male5","1234","정남성","male5@daum.net","010-5687-4356","2022-06-14 18:55:59", null),
("member1","1234","한가인","member1@naver.com","010-1234-1234","2015-06-14 18:27:08", null),
("member2","1234","둘가인","member2@naver.com","010-4321-4321","2023-09-17 18:27:52", null),
("member3","1234","삼가인","member3@naver.com","010-1235-1235","2023-09-18 18:28:20", null),
("member4","1234","사가인","member4@naver.com","010-5553-3456","2023-09-19 18:34:09", null),
("member5","1234","오가인","member5@naver.com","010-3323-1234","2023-09-12 18:35:14", null),
("onebean","1234","원빈","onebean@daum.net","010-2342-2341","2023-09-22 18:42:33", null),
("threebean","1234","삼빈","threebean@nate.com","010-6765-8678","2022-05-05 18:43:24", null),
("twobean","1234","투빈","twobean@google.com","010-8675-6473","2021-07-03 18:42:57", null),
("wusung","1234","정우성","wusung@naver.com","010-5843-4213","2023-04-06 18:54:03", null),
("admin","admin","admin","admin","admin", sysdate(), '관리자');

insert into address (address_id,addr_name,address,zip_code,detail_address,member_id,address_phone,basic_addr,address_msg)
values
(1,"한가인","경기 평택시 포승읍 원정리 1278","17950","작은집","member1","010-1234-1234",1,NULL),
(2,"둘가인","경북 구미시 1공단로 15-41","39347","큰집","member2","010-4321-4321",1,NULL),
(3,"삼가인","서울 강북구 수유동 279-3","01026","200호","member3","010-1235-1235",1,NULL),
(4,"사가인","서울 강동구 강동대로55길 10","05408","큰길","member4","010-5553-3456",1,NULL),
(5,"오가인","서울 강북구 4.19로 1","01026","작은길","member5","010-3323-1234",1,NULL),
(6,"원빈","서울 강북구 4.19로13길 22","01015","303호","onebean","010-2342-2341",1,NULL),
(7,"투빈","서울 관악구 난곡로44길 10","08849","파란대문","twobean","010-8675-6473",1,NULL),
(8,"삼빈","서울 강동구 고덕비즈밸리로6길 186","05206","산어딘가","threebean","010-6765-8678",1,NULL),
(9,"포빈","서울 강서구 방화대로6다길 9","07645","3층","fourbean","010-4423-1242",1,NULL),
(10,"파이브빈","서울 강북구 4.19로21길 28","01015","502호","fivebean","010-6657-6586",1,NULL),
(11,"한주훈","전북 군산시 산북동 786-12","54167","주택","jh1234","010-5252-3244",1,NULL),
(12,"둘주훈","경기 용인시 기흥구 덕영대로 1664","17103","골목안","juhoon","010-5243-3532",1,NULL),
(13,"삼주훈","부산 남구 감만동 504-2","48557","아파트","hoons","010-6546-7687",1,NULL),
(14,"사주훈","충북 청주시 상당구 가덕면 시동리 175-3","28204","안쪽집","4hoons","010-7865-4562",1,NULL),
(15,"오주훈","경남 거제시 거제면 거제남서로 3215-3","53286","골목집","jh5","010-6585-4353",1,NULL),
(16,"정우성","경북 울릉군 울릉읍 독도안용복길 3","40240","독도","wusung","010-5843-4213",1,NULL),
(17,"정좌성","경기 성남시 분당구 대왕판교로 477","13480","대왕","jwasung","010-4352-2412",1,NULL),
(18,"정북성","경기 성남시 분당구 서현동 300","13586","300호","buksung4","010-2976-6435",1,NULL),
(19,"정남성","충남 서천군 기산면 영모리 300","33626","안쪽","male5","010-5687-4356",1,NULL),
(20,"북두칠성","서울 동작구 상도로47가길 44","06970","602호","bukdu22","010-6434-2341",1,NULL);

create table orders(
	order_id int auto_increment primary key,
    order_status varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    orders_total_price int,
    delivery_fee int,
    merchant_uid varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    pay_type varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    member_id varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    imp_uid varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    prod_code varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    prod_count varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    prd_name varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    buyer_name varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    buyer_email varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    buyer_tel varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    buyer_addr varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    buyer_postcode varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    address_msg varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    cancel_reason varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    orders_reg_date timestamp
);

create table comments(
	comments_id int auto_increment primary key,
    content varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    com_writer varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    com_reg_date timestamp default now(),
    seq int,
    lev int,
    gid int,
    gpid int
);

insert into comments(content, com_writer, com_reg_date, seq, lev, gid, gpid)
values
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 1, 20),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 2, 19),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 3, 14),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 4, 15),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 5, 13),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 6, 16),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 7, 12),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 8, 11),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 9, 6),
('엄청 짱짱하고 용량이 엄청 커요', '4hoons', '2023-09-15 00:07:15', 0, 0, 10, 5),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 11, 20),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 12, 19),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 13, 18),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 14, 17),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 15, 16),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 16, 15),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 17, 14),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 18, 13),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 19, 12),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 20, 11),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 21, 10),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 22, 9),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 23, 8),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 24, 7),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 25, 6),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 26, 5),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 27, 4),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 28, 3),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 29, 2),
('바이크 타면서 항상 백팩이 작아서 고민이었는데 이건 정말 크고 좋네요 정말 커요', 'bukdu22', '2023-09-15 00:07:15', 0, 0, 30, 1),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 31, 20),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 32, 19),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 33, 16),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 34, 15),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 35, 12),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 36, 11),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 37, 8),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 38, 7),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 39, 4),
('고민한 시간이 아까움', 'buksung4', '2023-09-15 00:07:15', 0, 0, 40, 3),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 41, 18),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 42, 19),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 43, 14),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 44, 15),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 45, 10),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 46, 11),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 47, 6),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 48, 7),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 49, 3),
('엄청 크고 좋습니다!!', 'fivebean', '2023-09-15 00:07:15', 0, 0, 50, 2),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 51, 20),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 52, 17),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 53, 16),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 54, 13),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 55, 12),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 56, 9),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 57, 8),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 58, 5),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 59, 4),
('알바트로스 최고', 'fourbean', '2023-09-15 00:07:15', 0, 0, 60, 1),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 61, 20),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 62, 19),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 63, 18),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 64, 17),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 65, 16),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 66, 15),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 67, 13),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 68, 12),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 69, 11),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 70, 10),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 71, 9),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 72, 8),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 73, 7),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 74, 5),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 75, 4),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 76, 3),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 77, 2),
('역시나 맥포스 ㅎㅎ', 'hoons', '2023-09-15 00:07:15', 0, 0, 78, 1),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 79, 20),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 80, 19),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 81, 18),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 82, 17),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 83, 12),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 84, 11),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 85, 9),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 86, 10),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 87, 3),
('미니멀캠핑을 위해 주문해봤어요.', 'jh1234', '2023-09-15 00:07:15', 0, 0, 88, 2),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 89, 20),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 90, 18),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 91, 16),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 92, 14),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 93, 12),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 94, 10),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 95, 8),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 96, 6),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 97, 4),
('디자인좋고튼튼하고좋아요!!!', 'jh5', '2023-09-15 00:07:15', 0, 0, 98, 2),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 99, 19),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 100, 18),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 101, 15),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 102, 14),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 103, 11),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 104, 10),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 106, 7),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 107, 6),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 108, 3),
('아주 예쁩니다 ㅎㅎ 제 기대보단 작긴한데 그래도 꽤 큰 가방이구요 매고다니고싶네요', 'juhoon', '2023-09-15 00:07:15', 0, 0, 109, 2),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 110, 20),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 111, 18),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 112, 16),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 113, 14),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 114, 12),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 115, 10),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 116, 8),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 117, 6),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 118, 4),
('인생배낭득템해서 기분이 넘 좋숩니당 로고가 포스 ㄷ ㄷ', 'jwasung', '2023-09-15 00:07:15', 0, 0, 119, 2),
('가방..하..개이쁨', 'male5', '2023-09-15 00:07:15', 0, 0, 120, 19),
('가방..하..개이쁨', 'male5', '2023-09-15 00:07:15', 0, 0, 121, 15),
('가방..하..개이쁨', 'male5', '2023-09-15 00:07:15', 0, 0, 122, 11),
('가방..하..개이쁨', 'male5', '2023-09-15 00:07:15', 0, 0, 123, 7),
('가방..하..개이쁨', 'male5', '2023-09-15 00:07:15', 0, 0, 124, 3),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 125, 20),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 126, 16),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 127, 12),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 128, 8),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 129, 17),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 130, 13),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 131, 13),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 132, 9),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 133, 5),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 134, 4),
('역시 깊은 고민은.. 배송만늦출뿐', 'member1', '2023-09-15 00:07:15', 0, 0, 135, 1);

insert into orders(order_status, orders_total_price, delivery_fee, merchant_uid, pay_type, member_id, imp_uid, prod_code, prod_count, prd_name, buyer_name, buyer_email, buyer_tel, buyer_addr, buyer_postcode, address_msg, orders_reg_date)
values
('배송 완료', 674000, 0, 'IWILLBAG202309151325291930200', 'kakaopay.TC0ONETIME', 'male5', 'imp_216950697834', '1144,1119,1117', '1,1,1',
'스패로우 스몰백,IMBS 태스크포스 백팩 - 왁스 블랙,IMBS 파이오니아 백팩 - 블랙', '정남성', 'male5@daum.net', '01056874356', '충남 서천군 기산면 영모리 300 안쪽', '33626', '부재 시 경비실에 맡겨주세요', '2023-09-14 13:25:50'),
('결제 완료', 690000, 0, 'IWILLBAG20220915150778175200', 'tosspay.tosstest', 'hoons', 'imp_875064478144', '1143', '5',
'맥파이 2 아이패드 캐리어', '삼주훈', 'hoons@naver.com', '01065467687', '부산 남구 감만동 504-2 아파트', '48557', '부재 시 경비실에 맡겨주세요', '2022-09-02 13:25:50'),
('배송 중', 138000, 0, 'IWILLBAG20221015150778175200', 'payco.AUTOPAY', 'member1', 'imp_744677195973', '1124', '2',
'레오파드 랩탑 케이스', '한가인', 'member1@naver.com', '01012341234', '경기 성남시 분당구 경부고속도로 409 휴게소', '13473', '부재 시 문자나 전화주세요', '2022-10-22 13:25:50'),
('배송 완료', 398000, 0, 'IWILLBAG20221130150778175200', 'kcp.A52CY', '4hoons', 'imp_140197923439', '1111,1144', '2,1',
'알바트로스 EDC 3웨이백,스패로우 스몰백 - 블랙', '사주훈', '4hoons@google.com', '01078654562', '충남 서천군 기산면 영모리 300 안쪽', '33626', '빠른 배송 바람', '2022-11-30 13:25:50'),
('결제 완료', 404000, 0, 'IWILLBAG202212121325291930200', 'kakaopay.TC0ONETIME', 'bukdu22', 'imp_216921397834', '1121', '1',
'썬더버드 MPB', '북두칠성', 'bukdu22@nate.com', '01064342341', '부산 해운대구 APEC로 17 g', '33626', '연락주세요', '2022-12-12 13:25:50'),
('배송 중', 438000, 0, 'IWILLBAG20230105150778175200', 'tosspay.tosstest', 'buksung4', 'imp_225064478144', '1132', '3',
'다이하드 트래블백 L', '정북성', 'buksung4@nate.com', '01029766435', '서울 강동구 아리수로 46-4 d', '05237', '문자 바람', '2023-01-05 13:25:50'),
('배송 완료', 238000, 0, 'IWILLBAG20230228150778175200', 'payco.AUTOPAY', 'fivebean', 'imp_733677195973', '1131', '1',
'다이하드 트래블백 L', '파이브빈', 'fivebean@google.com', '01066576586', '서울 성동구 고산자로 297 g', '04705', '부재 시 문자나 전화주세요', '2023-02-28 13:25:50'),
('결제 완료', 798000, 0, 'IWILLBAG20230310150778175200', 'kcp.A52CY', 'fourbean', 'imp_140188923439', '11110,1119', '4,2',
'IMBS 태스크포스 백팩,IMBS 태스크포스 백팩 - 왁스 블랙', '포빈', 'fourbean@nate.com', '01044231242', '서울특별시 마포구 광성로4길 21-12 (신수동) 2층', '04096', '전화주세요', '2023-03-10 13:25:50'),
('결제 완료', 428300, 0, 'IWILLBAG202304121325291930200', 'kakaopay.TC0ONETIME', 'jh1234', 'imp_216942567834', '1118', '1',
'IMBS 태스크포스 백팩 - 왁스 브라운외 0건', '한주훈', 'jh1234@google.com', '01052523244', '경기도 남양주시 와부읍 수레로1번길 13 333', '12205', '부재 시 문자나 전화주세요', '2023-04-12 13:25:50'),
('배송 중', 538000, 0, 'IWILLBAG20230526150778175200', 'tosspay.tosstest', 'jh5', 'imp_764064478144', '1117,1116,1115', '3,1,1',
'IMBS 파이오니아 백팩,IMBS 파이오니아 백팩 - 왁스 블랙,IMBS 파이오니아 백팩 - 왁스 브라운', '오주훈', 'jh5@nate.com', '01065854353', '전라북도 군산시 하신재길 33 (문화동) ㅎㅁ', '54133', '부재 시 경비실에 맡겨주세요', '2023-05-26 13:25:50'),
('배송 완료', 998000, 0, 'IWILLBAG20230609150778175200', 'payco.AUTOPAY', 'juhoon', 'imp_111677195973', '1114', '1',
'IMBS 파이오니아 백팩', '둘주훈', 'hbh1234@google.com', '01052433532', '경상남도 사천시 서부시장길 19-5 (선구동) ㅂ', '52569', 'weajio', '2023-06-09 13:25:50'),
('결제 완료', 198000, 0, 'IWILLBAG20230719150778175200', 'kcp.A52CY', 'jwasung', 'imp_550188923439', '1113,1112', '1,1',
'알바트로스 EDC 3웨이백,알바트로스 EDC 3웨이백-올리브', '정좌성', 'jwasung@naver.com', '01043522412', '서울특별시 강북구 삼양로163가길 32 (우이동, 호호아트빌) 1층', '01004', 'aweg', '2023-07-19 13:25:50'),
('결제 완료', 611000, 0, 'IWILLBAG202308231325291930200', 'kakaopay.TC0ONETIME', 'member2', 'imp_435242567834', '1111', '6',
'알바트로스 EDC 3웨이백', '둘가인', 'member2@naver.com', '01043214321', '서울특별시 성북구 화랑로 90-20 (하월곡동) 88', '02793', '빨리와', '2023-08-23 13:25:50'),
('배송 중', 738000, 0, 'IWILLBAG20230911150778175200', 'tosspay.tosstest', 'member3', 'imp_123454478144', '1144,1143,1142', '2,2,2',
'맥파이 2 아이패드 캐리어,맥파이 2 아이패드 캐리어 - 포리지,맥파이 2 아이패드 캐리어 - 데저트 카모', '삼가인', 'member3@naver.com', '01012351235', '서울특별시 종로구 청계천로 341 (창신동) 경복궁', '03120', '부재 시 문자나 전화주세요', '2023-09-11 13:25:50'),
('배송 완료', 198000, 0, 'IWILLBAG20220830150778175200', 'payco.AUTOPAY', 'member4', 'imp_678234195973', '1141', '1',
'맥파이 2 아이패드 캐리어', '사가인', 'member4@naver.com', '01055533456', '광주광역시 서구 마륵벽진길 23 (마륵동) ㅠㅇㄴㅇ', '61999', '전화주세요', '2022-08-30 13:25:50'),
('결제 완료', 398000, 0, 'IWILLBAG20220707150778175200', 'kcp.A52CY', 'member5', 'imp_987688923439', '1132,1131', '1,2',
'다이하드 트래블백 L - 블랙,다이하드 트래블백 L - 블랙', '오가인', 'member5@naver.com', '01033231234', '경기도 용인시 처인구 포곡읍 영문로 123 하하호호', '17040', '빠른 배송 바람', '2022-07-07 13:25:50'),
('결제 완료', 211000, 0, 'IWILLBAG202206141325291930200', 'kakaopay.TC0ONETIME', 'onebean', 'imp_333332567834', '1124', '3',
'레오파드 랩탑 케이스', '원빈', 'onebean@daum.net', '01023422341', '경상남도 사천시 팔포2길 15 (선구동) 빈 집', '52568', '부재 시 경비실에 맡겨주세요', '2022-06-14 13:25:50'),
('배송 중', 438000, 0, 'IWILLBAG20220528150778175200', 'tosspay.tosstest', 'threebean', 'imp_123482378144', '1123,1122,1121', '1,1,1',
'썬더버드 MPB,IMBS 태스크포스 백팩 - 왁스 블랙,IMBS 태스크포스 백팩 - 왁스 브라운', '삼빈', 'threebean@nate.com', '01067658678', '제주특별자치도 제주시 애월읍 하소로 769-15 뉴코리아', '63067', '빠른 배송 바람', '2022-05-28 13:25:50'),
('배송 완료', 98000, 0, 'IWILLBAG20220401150778175200', 'payco.AUTOPAY', 'twobean', 'imp_678234234573', '11110', '1',
'IMBS 태스크포스 백팩', '투빈', 'twobean@google.com', '01086756473', '경기도 오산시 원동로37번길 30 (원동) 비비피아', '18141', '부재 시 문자나 전화주세요', '2022-04-01 13:25:50'),
('결제 완료', 698000, 0, 'IWILLBAG20220314150778175200', 'kcp.A52CY', 'wusung', 'imp_986571923439', '1119,1118', '3,3',
'IMBS 태스크포스 백팩 - 왁스 블랙,IMBS 태스크포스 백팩 - 왁스 브라운', '정우성', 'wusung@naver.com', '01058434213', '서울특별시 은평구 서오릉로18길 19 (갈현동, 비비드하임) 비비드하임', '03326', '문자', '2022-03-14 13:25:50'),
('배송 완료', 374000, 0, 'IWILLBAG202309091325291930200', 'kakaopay.TC0ONETIME', 'male5', 'imp_216950633834', '1144,1119,1117', '1,1,1',
'스패로우 스몰백 - 블랙,IMBS 태스크포스 백팩 - 왁스 블랙,IMBS 파이오니아 백팩 - 블랙', '정남성', 'male5@daum.net', '01056874356', '충남 서천군 기산면 영모리 300 안쪽', '33626', '부재 시 경비실에 맡겨주세요', '2023-09-09 13:25:50'),
('결제 완료', 493300, 0, 'IWILLBAG20220926150778175200', 'tosspay.tosstest', 'hoons', 'imp_875064268144', '1143', '5',
'맥파이 2 아이패드 캐리어', '삼주훈', 'hoons@naver.com', '01065467687', '부산 남구 감만동 504-2 아파트', '48557', '부재 시 경비실에 맡겨주세요', '2022-09-26 13:25:50'),
('배송 중', 144400, 0, 'IWILLBAG20221003150778175200', 'payco.AUTOPAY', 'member1', 'imp_744670395973', '1124', '2',
'레오파드 랩탑 케이스', '한가인', 'member1@naver.com', '01012341234', '경기 성남시 분당구 경부고속도로 409 휴게소', '13473', '부재 시 문자나 전화주세요', '2022-10-03 13:25:50'),
('배송 완료', 892100, 0, 'IWILLBAG20221129150778175200', 'kcp.A52CY', '4hoons', 'imp_140197922939', '1111,1144', '2,1',
'알바트로스 EDC 3웨이백-카키,스패로우 스몰백 - 블랙', '사주훈', '4hoons@google.com', '01078654562', '충남 서천군 기산면 영모리 300 안쪽', '33626', '빠른 배송 바람', '2022-11-29 13:25:50'),
('결제 완료', 204000, 0, 'IWILLBAG202212241325291930200', 'kakaopay.TC0ONETIME', 'bukdu22', 'imp_216921247834', '1121', '1',
'썬더버드 MPB', '북두칠성', 'bukdu22@nate.com', '01064342341', '부산 해운대구 APEC로 17 g', '33626', '연락주세요', '2022-12-24 13:25:50'),
('배송 중', 552000, 0, 'IWILLBAG20230112150778175200', 'tosspay.tosstest', 'buksung4', 'imp_225061278144', '1132', '3',
'다이하드 트래블백 L', '정북성', 'buksung4@nate.com', '01029766435', '서울 강동구 아리수로 46-4 d', '05237', '문자 바람', '2023-01-12 13:25:50'),
('배송 완료', 722100, 0, 'IWILLBAG20230206150778175200', 'payco.AUTOPAY', 'fivebean', 'imp_733677106973', '1131', '1',
'다이하드 트래블백 L', '파이브빈', 'fivebean@google.com', '01066576586', '서울 성동구 고산자로 297 g', '04705', '부재 시 문자나 전화주세요', '2023-02-06 13:25:50'),
('결제 완료', 123400, 0, 'IWILLBAG20230320150778175200', 'kcp.A52CY', 'fourbean', 'imp_140182023439', '11110,1119', '4,2',
'IMBS 태스크포스 백팩,IMBS 태스크포스 백팩 - 왁스 블랙', '포빈', 'fourbean@nate.com', '01044231242', '서울특별시 마포구 광성로4길 21-12 (신수동) 2층', '04096', '전화주세요', '2023-03-20 13:25:50'),
('결제 완료', 478900, 0, 'IWILLBAG202304041325291930200', 'kakaopay.TC0ONETIME', 'jh1234', 'imp_216904567834', '1118', '1',
'IMBS 태스크포스 백팩 - 왁스 브라운', '한주훈', 'jh1234@google.com', '01052523244', '경기도 남양주시 와부읍 수레로1번길 13 333', '12205', '부재 시 문자나 전화주세요', '2023-04-04 13:25:50'),
('배송 중', 883200, 0, 'IWILLBAG20230515150778175200', 'tosspay.tosstest', 'jh5', 'imp_764064471544', '1117,1116,1115', '3,1,1',
'IMBS 파이오니아 백팩 - 블랙,IMBS 파이오니아 백팩 - 왁스 블랙,IMBS 파이오니아 백팩 - 왁스 브라운', '오주훈', 'jh5@nate.com', '01065854353', '전라북도 군산시 하신재길 33 (문화동) ㅎㅁ', '54133', '부재 시 경비실에 맡겨주세요', '2023-05-15 13:25:50'),
('배송 완료', 111200, 0, 'IWILLBAG20230623150778175200', 'payco.AUTOPAY', 'juhoon', 'imp_111672395973', '1114', '1',
'IMBS 파이오니아 백팩 - 블랙카모', '둘주훈', 'hbh1234@google.com', '01052433532', '경상남도 사천시 서부시장길 19-5 (선구동) ㅂ', '52569', 'weajio', '2023-06-23 13:25:50'),
('결제 완료', 34700, 0, 'IWILLBAG20230702150778175200', 'kcp.A52CY', 'jwasung', 'imp_550188923029', '1113,1112', '1,1',
'알바트로스 EDC 3웨이백-블랙,알바트로스 EDC 3웨이백-올리브', '정좌성', 'jwasung@naver.com', '01043522412', '서울특별시 강북구 삼양로163가길 32 (우이동, 호호아트빌) 1층', '01004', 'aweg', '2023-07-02 13:25:50'),
('결제 완료', 234200, 0, 'IWILLBAG202308111325291930200', 'kakaopay.TC0ONETIME', 'member2', 'imp_435242117834', '1111', '6',
'알바트로스 EDC 3웨이백-카키', '둘가인', 'member2@naver.com', '01043214321', '서울특별시 성북구 화랑로 90-20 (하월곡동) 88', '02793', '빨리와', '2023-08-11 13:25:50'),
('배송 중', 612900, 0, 'IWILLBAG20230907150778175200', 'tosspay.tosstest', 'member3', 'imp_123454407144', '1144,1143,1142', '2,2,2',
'맥파이 2 아이패드 캐리어 - 데저트 카모', '삼가인', 'member3@naver.com', '01012351235', '서울특별시 종로구 청계천로 341 (창신동) 경복궁', '03120', '부재 시 문자나 전화주세요', '2023-09-07 13:25:50'),
('배송 완료', 823400, 0, 'IWILLBAG20220824150778175200', 'payco.AUTOPAY', 'member4', 'imp_678234195243', '1141', '1',
'맥파이 2 아이패드 캐리어 - 블랙', '사가인', 'member4@naver.com', '01055533456', '광주광역시 서구 마륵벽진길 23 (마륵동) ㅠㅇㄴㅇ', '61999', '전화주세요', '2022-08-24 13:25:50'),
('결제 완료', 289900, 0, 'IWILLBAG20220714150778175200', 'kcp.A52CY', 'member5', 'imp_987688923149', '1132,1131', '1,2',
'다이하드 트래블백 L - 카키 포리지,다이하드 트래블백 L - 블랙', '오가인', 'member5@naver.com', '01033231234', '경기도 용인시 처인구 포곡읍 영문로 123 하하호호', '17040', '빠른 배송 바람', '2022-07-14 13:25:50'),
('결제 완료', 382710, 0, 'IWILLBAG202206291325291930200', 'kakaopay.TC0ONETIME', 'onebean', 'imp_329332567834', '1124', '3',
'레오파드 랩탑 케이스 - 블랙', '원빈', 'onebean@daum.net', '01023422341', '경상남도 사천시 팔포2길 15 (선구동) 빈 집', '52568', '부재 시 경비실에 맡겨주세요', '2022-06-29 13:25:50'),
('배송 중', 183740, 0, 'IWILLBAG20220510150778175200', 'tosspay.tosstest', 'threebean', 'imp_123482310144', '1123,1122,1121', '1,1,1',
'썬더버드 MPB - 블랙', '삼빈', 'threebean@nate.com', '01067658678', '제주특별자치도 제주시 애월읍 하소로 769-15 뉴코리아', '63067', '빠른 배송 바람', '2022-05-10 13:25:50'),
('배송 완료', 412600, 0, 'IWILLBAG20220404150778175200', 'payco.AUTOPAY', 'twobean', 'imp_6782349044573', '11110', '1',
'IMBS 태스크포스 백팩 - 블랙', '투빈', 'twobean@google.com', '01086756473', '경기도 오산시 원동로37번길 30 (원동) 비비피아', '18141', '부재 시 문자나 전화주세요', '2022-04-04 13:25:50'),
('결제 완료', 3816400, 0, 'IWILLBAG20220318150778175200', 'kcp.A52CY', 'wusung', 'imp_986571823439', '1119,1118', '3,3',
'IMBS 태스크포스 백팩 - 왁스 블랙, IMBS 태스크포스 백팩 - 왁스 브라운', '정우성', 'wusung@naver.com', '01058434213', '서울특별시 은평구 서오릉로18길 19 (갈현동, 비비드하임) 비비드하임', '03326', '문자', '2022-03-18 13:25:50'),
('배송 완료', 674000, 0, 'IWILLBAG202112251325291930200', 'kakaopay.TC0ONETIME', 'male5', 'imp_216912257834', '1144,1119,1117', '1,1,1',
'스패로우 스몰백 - 블랙,IMBS 태스크포스 백팩 - 왁스 블랙,IMBS 파이오니아 백팩 - 블랙', '정남성', 'male5@daum.net', '01056874356', '충남 서천군 기산면 영모리 300 안쪽', '33626', '부재 시 경비실에 맡겨주세요', '2021-12-25 13:25:50'),
('결제 완료', 690000, 0, 'IWILLBAG20220211150778175200', 'tosspay.tosstest', 'hoons', 'imp_8750602118144', '1143', '5',
'맥파이 2 아이패드 캐리어 - 포리지', '삼주훈', 'hoons@naver.com', '01065467687', '부산 남구 감만동 504-2 아파트', '48557', '부재 시 경비실에 맡겨주세요', '2022-02-11 13:25:50'),
('배송 중', 138000, 0, 'IWILLBAG20220107150778175200', 'payco.AUTOPAY', 'member1', 'imp_744677010773', '1124', '2',
'레오파드 랩탑 케이스 - 블랙', '한가인', 'member1@naver.com', '01012341234', '경기 성남시 분당구 경부고속도로 409 휴게소', '13473', '부재 시 문자나 전화주세요', '2022-01-07 13:25:50'),
('배송 완료', 398000, 0, 'IWILLBAG20211160150778175200', 'kcp.A52CY', '4hoons', 'imp_1401971116439', '1111,1144', '2,1',
'알바트로스 EDC 3웨이백-카키,스패로우 스몰백 - 블랙', '사주훈', '4hoons@google.com', '01078654562', '충남 서천군 기산면 영모리 300 안쪽', '33626', '빠른 배송 바람', '2021-11-16 13:25:50'),
('결제 완료', 404000, 0, 'IWILLBAG202110031325291930200', 'kakaopay.TC0ONETIME', 'bukdu22', 'imp_216910037834', '1121', '1',
'썬더버드 MPB - 블랙', '북두칠성', 'bukdu22@nate.com', '01064342341', '부산 해운대구 APEC로 17 g', '33626', '연락주세요', '2021-10-03 13:25:50'),
('배송 중', 438000, 0, 'IWILLBAG20210930150778175200', 'tosspay.tosstest', 'buksung4', 'imp_225009308144', '1132', '3',
'다이하드 트래블백 L - 카키 포리지', '정북성', 'buksung4@nate.com', '01029766435', '서울 강동구 아리수로 46-4 d', '05237', '문자 바람', '2021-09-30 13:25:50'),
('배송 완료', 238000, 0, 'IWILLBAG20210818150778175200', 'payco.AUTOPAY', 'fivebean', 'imp_733670818973', '1131', '1',
'다이하드 트래블백 L - 블랙', '파이브빈', 'fivebean@google.com', '01066576586', '서울 성동구 고산자로 297 g', '04705', '부재 시 문자나 전화주세요', '2021-08-18 13:25:50'),
('결제 완료', 798000, 0, 'IWILLBAG20210703150778175200', 'kcp.A52CY', 'fourbean', 'imp_1401807303439', '11110,1119', '4,2',
'IMBS 태스크포스 백팩 - 블랙,IMBS 태스크포스 백팩 - 왁스 블랙', '포빈', 'fourbean@nate.com', '01044231242', '서울특별시 마포구 광성로4길 21-12 (신수동) 2층', '04096', '전화주세요', '2021-07-03 13:25:50'),
('결제 완료', 428300, 0, 'IWILLBAG202106271325291930200', 'kakaopay.TC0ONETIME', 'jh1234', 'imp_216906277834', '1118', '1',
'IMBS 태스크포스 백팩 - 왁스 브라운', '한주훈', 'jh1234@google.com', '01052523244', '경기도 남양주시 와부읍 수레로1번길 13 333', '12205', '부재 시 문자나 전화주세요', '2021-06-27 13:25:50'),
('배송 중', 538000, 0, 'IWILLBAG20210519150778175200', 'tosspay.tosstest', 'jh5', 'imp_764005198144', '1117,1116,1115', '3,1,1',
'IMBS 파이오니아 백팩 - 블랙,IMBS 파이오니아 백팩 - 왁스 블랙,IMBS 파이오니아 백팩 - 왁스 브라운,', '오주훈', 'jh5@nate.com', '01065854353', '전라북도 군산시 하신재길 33 (문화동) ㅎㅁ', '54133', '부재 시 경비실에 맡겨주세요', '2021-05-19 13:25:50'),
('배송 완료', 998000, 0, 'IWILLBAG20210402150778175200', 'payco.AUTOPAY', 'juhoon', 'imp_111604025973', '1114', '1',
'IMBS 파이오니아 백팩 - 블랙카모', '둘주훈', 'hbh1234@google.com', '01052433532', '경상남도 사천시 서부시장길 19-5 (선구동) ㅂ', '52569', 'weajio', '2021-04-02 13:25:50'),
('결제 완료', 198000, 0, 'IWILLBAG20210326150778175200', 'kcp.A52CY', 'jwasung', 'imp_550188903269', '1113,1112', '1,1',
'알바트로스 EDC 3웨이백-올리브,알바트로스 EDC 3웨이백-블랙', '정좌성', 'jwasung@naver.com', '01043522412', '서울특별시 강북구 삼양로163가길 32 (우이동, 호호아트빌) 1층', '01004', 'aweg', '2021-03-26 13:25:50'),
('결제 완료', 611000, 0, 'IWILLBAG202102171325291930200', 'kakaopay.TC0ONETIME', 'member2', 'imp_430217567834', '1111', '6',
'알바트로스 EDC 3웨이백-카키', '둘가인', 'member2@naver.com', '01043214321', '서울특별시 성북구 화랑로 90-20 (하월곡동) 88', '02793', '빨리와', '2021-02-17 13:25:50'),
('배송 중', 738000, 0, 'IWILLBAG20210105150778175200', 'tosspay.tosstest', 'member3', 'imp_123010578144', '1144,1143,1142', '2,2,2',
'맥파이 2 아이패드 캐리어 - 데저트 카모', '삼가인', 'member3@naver.com', '01012351235', '서울특별시 종로구 청계천로 341 (창신동) 경복궁', '03120', '부재 시 문자나 전화주세요', '2021-01-05 13:25:50'),
('배송 완료', 198000, 0, 'IWILLBAG20211206150778175200', 'payco.AUTOPAY', 'member4', 'imp_671206195973', '1141', '1',
'맥파이 2 아이패드 캐리어 - 블랙', '사가인', 'member4@naver.com', '01055533456', '광주광역시 서구 마륵벽진길 23 (마륵동) ㅠㅇㄴㅇ', '61999', '전화주세요', '2021-12-06 13:25:50'),
('결제 완료', 398000, 0, 'IWILLBAG20211124150778175200', 'kcp.A52CY', 'member5', 'imp_987611243439', '1132,1131', '1,2',
'다이하드 트래블백 L - 블랙,다이하드 트래블백 L - 블랙', '오가인', 'member5@naver.com', '01033231234', '경기도 용인시 처인구 포곡읍 영문로 123 하하호호', '17040', '빠른 배송 바람', '2021-11-24 13:25:50'),
('결제 완료', 211000, 0, 'IWILLBAG202110071325291930200', 'kakaopay.TC0ONETIME', 'onebean', 'imp_310072567834', '1124', '3',
'레오파드 랩탑 케이스 - 블랙', '원빈', 'onebean@daum.net', '01023422341', '경상남도 사천시 팔포2길 15 (선구동) 빈 집', '52568', '부재 시 경비실에 맡겨주세요', '2021-10-07 13:25:50'),
('배송 중', 438000, 0, 'IWILLBAG20210922150778175200', 'tosspay.tosstest', 'threebean', 'imp_123092278144', '1123,1122,1121', '1,1,1',
'레오파드 랩탑 케이스 - 카키 포리지,레오파드 랩탑 케이스 - 포리지,썬더버드 MPB - 블랙', '삼빈', 'threebean@nate.com', '01067658678', '제주특별자치도 제주시 애월읍 하소로 769-15 뉴코리아', '63067', '빠른 배송 바람', '2021-09-22 13:25:50'),
('배송 완료', 98000, 0, 'IWILLBAG20210811150778175200', 'payco.AUTOPAY', 'twobean', 'imp_678230811573', '11110', '1',
'IMBS 태스크포스 백팩 - 블랙', '투빈', 'twobean@google.com', '01086756473', '경기도 오산시 원동로37번길 30 (원동) 비비피아', '18141', '부재 시 문자나 전화주세요', '2021-08-11 13:25:50'),
('결제 완료', 698000, 0, 'IWILLBAG20210706150778175200', 'kcp.A52CY', 'wusung', 'imp_986570706439', '1119,1118', '3,3',
'IMBS 태스크포스 백팩 - 왁스 블랙,IMBS 태스크포스 백팩 - 왁스 브라운', '정우성', 'wusung@naver.com', '01058434213', '서울특별시 은평구 서오릉로18길 19 (갈현동, 비비드하임) 비비드하임', '03326', '문자', '2021-07-06 13:25:50');

create table quit_member(
   member_id varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
   member_quit_date timestamp default now(),
   order_exist varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);

create table black_list(
   member_id varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
   black_list_reg_date timestamp default now()
);