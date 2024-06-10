
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.example.demo.dto.MainDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- 자바처럼 해당 페이지 구성에 필요한 메소드들을 import로 불러오는 모습 보통 ctrl+space를 누르면 자동으로 불러와진다. -->
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>이커버스</title>
  <link rel="stylesheet" href="css/common.css" />
  <link rel="stylesheet" href="css/reset.css" />
  <link rel="stylesheet" href="css/main.css" />
  <link rel="stylesheet" href="css/sub.css" />
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/common.js" defer></script>
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	
	<!-- 자바 스크립트 단 -->
  <script>
    function confirmLogout() {
      if (confirm("로그아웃하시겠습니까?")) {
        window.location.href = "logout.html";
      }
    }
  </script>
  
<script type="text/javascript">

let check_dic = {"성공" : "연결됨"};
/* 날짜 포맷을 변경하기 위한 java  호출 */
<%SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>

/* 실시간 html 갱신을 위한 Ajax 함수 */
function callAjax(){		
		$.ajax({
		  type : 'post', /* 포스트타입으로 */
   		  url : 'http://192.168.50.51:5000/', /* 목표 아이피와 통신 여기선  python:Flask - DB와 통신 */
/*		  url : 'AI.jsp', */
/*    		  url : 'http://221.144.59.244:5000/' */
		  data : check_dic, /* check_dic을 보낸다 */
		  dataType : 'json', /* json 타입으로 */
		  success : function(res) { /* 통신 성공 했을 시 실행 함수 */
				var count = res['count'];
				/* 받아온 값으로 html 값을 즉시 수정한다 - 실시간 값 변경 */
				<%for (int i = 0; i < 10; i++) {%>
				var Name<%=i + 1%> = count[<%=i%>][1];
				var location<%=i + 1%> = count[<%=i%>][2];
				var size<%=i + 1%> = count[<%=i%>][3];
				var ea<%=i + 1%> = count[<%=i%>][4];
				var date<%=i + 1%> = count[<%=i%>][0];
				/* 각 id 값을 기준으로 값 갱신 */
				document.getElementById("name<%=i + 1%>").innerHTML = Name<%=i + 1%>;
				document.getElementById("location<%=i + 1%>").innerHTML = location<%=i + 1%>;
				document.getElementById("ea<%=i + 1%>").innerHTML = ea<%=i + 1%>;
				document.getElementById("size<%=i + 1%>").innerHTML = size<%=i + 1%>;
				document.getElementById("time<%=i + 1%>").innerHTML = date<%=i + 1%>;
				<%}%>

				
		},
		error : function() { 

		}
		})
	}
	setInterval(callAjax, 1000) /* 밀리초 단위 딜레이(1초 지연) */
	callAjax()
	;
</script>
  
  
  
  
</head>

<body style="overflow-y: hidden">
  <!-- 헤더 영역 -->
  <header>
    <div class="header_wrap">
      <h1 class="logo">
        <!-- <img src="./img/ecoversLogo.svg" alt="" class="filter-orange size-m"/> -->

      </h1>
      <p>ECOVERS 통합 모니터링 시스템</p>
      <div class="hd_icon">
        <div class="alarm_modal">
          <button class="bell">
            <img src="./img/ico_bell.png" alt="" />
          </button>
          <div class="alarm">
            <div class="modal_content" title="클릭하면 창이 닫힙니다.">
              <h3>알림</h3>
              <a href="" class="alarm-modal_contents alarm-data-1">
                <p class="ico_dot dot_color_red"></p>
                <span>11.23</span>
                <div>
                  <strong>새로운 주문이 들어왔습니다.</strong>
                  <p class="modal_content_text">
                    양말 100켤레 주문이 들어왔습니다. 확인 부탁...
                  </p>
                </div>
              </a>
              <a href="" class="alarm-modal_contents alarm-data-2">
                <p class="ico_dot dot_color_blue"></p>
                <span>11.23</span>
                <div>
                  <strong>주문 일정이 임박했습니다.</strong>
                  <p class="modal_content_text">
                    티셔츠 100개의 납기 일정이 오늘까지입니다.
                  </p>
                </div>
              </a>
              <a href="" class="alarm-modal_contents alarm-data-3">
                <p class="ico_dot dot_color_blue"></p>
                <span>11.23</span>
                <div>
                  <strong>생산 라인별 비교</strong>
                  <p class="modal_content_text">생산 라인별 비교</p>
                </div>
              </a>
            </div>
            <button class="alarm_contents_bt_text">생산 라인별 비교</button>
          </div>
        </div>
        <div class="people">
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()" /></div>
          <div><img src="./img/ico_arrow_people.png" alt="" /></div>
        </div>
      </div>
    </div>
  </header>
  <section>
    <!-- 메뉴(아코디언)  -->
    <div class="nav_wrap">
      <div class="menu_wrap">
        <!-- 회원정보 -->
        <div class="index">
          <!-- <div class="index_img">
              <img src="./img/ico_people_big.png" alt="" />
            </div>
            <div class="index_txt">
              <h2>User</h2>
              <p>User님 환영합니다!</p>
              <div class="index_txt_btn" onClick="location.href='main.html'"><button>로그아웃</button></div>
            </div> -->
        </div>
        <!-- 아코디언 메뉴 -->
        <div class="accordion">
          <ul class="menu">
            <li>
              <a href="main" class="cate">
                <span><img src="./img/ico_home.png" alt="" /></span>
                <span>Home</span>
              </a>
            </li>
            <li>
              <a href="AI" class="cate on">
                <span><img src="./img/ico_ai.png" alt="" /></span>
                <span>실시간 AI CCTV</span>
              </a>
              <!-- <div>
                  <p>소메뉴1</p>
                </div> -->
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_box.png" alt="" /></span>
                <span>생산관리</span>
              </a>
              <div>
                <p onClick="location.href='makeline'">공장 정보</p></a>
                <p onClick="location.href='#'">작업 지시 및 조회</p>
                <p onClick="location.href='#'">생산 일보</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_product.png" alt="" /></span>
                <span>제품관리</span>
              </a>
              <div>
                <p onClick="location.href='production.html'">제품 재고 현황</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_date.png" alt="" /></span>
                <span>일정관리</span>
              </a>
              <div>
                <p onClick="location.href='date.html'">일정 등록/관리</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_article.png" alt="" /></span>
                <span>자재관리</span>
              </a>
              <div>
                <p onClick="location.href='item.html'">자재 발주 및 조회</p>
                <p>자재 보관</p>
                <p>자재 입고 현황</p>
                <p>자재 재고 조회</p>
              </div>
            </li>
            <li>
              <a href="orderlist.html" class="cate">
                <span><img src="./img/ico_order.png" alt="" /></span>
                <span>주문관리</span>
              </a>
              <div>
                <p onClick="location.href='orderlist.html'">주문 목록</p>
                <p>거래처 관리</p>
                <p>출고 및 조회</p>
              </div>
            </li>
            <li>
              <a href="member.html" class="cate">
                <span><img src="./img/ico_member.png" alt="" /></span>
                <span>회원관리</span>
              </a>
              <div>
                <p onClick="location.href='member'">회원관리</p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- 이 밑으로 내용 추가  -->
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>실시간 AI CCTV</p>
          <!-- <p>재고 관리 > 주문 목록(수정해야됨)</p> -->
        </h2>
      </div>
      <!-- 카메라 영상 + 표랑 같이 있는 버전  -->
      <!-- <img src="http://192.168.50.55:5000/video_feed" width="72%" height="72%" style="float: left;">
      <table border="1" style="text-align: center; border-collapse: collapse;float: left">
        <tr>
          <td>Name</td>
          <td>Location</td>
          <td>EA</td>
          <td>TIME</td>
        </tr>
        <tr>
          <td>Flower_Cream_Bottom</td>
          <td>A-3</td>
          <td>1</td>
          <td>2023-01-01 00:00</td>
        </tr>
      </table> -->
      <!-- 카메라 영상만 있는 경우  -->
      
      
      <textbox>
      <img src="http://106.252.246.76:5000/video_feed" id="cam" width="70%" height="95%" style="float: left;" > 
      <!-- <video src="img/2_edit.mp4" autoplay muted loop style="width: 70%;float: left;"></video> -->
      
      
  
     
    	  
      
      
      <div style=" height: 590px; font-size: 10pt; border-collapse: collapse; overflow-y: scroll;text-align: center;">
        <table style="width: 100%;">
          <thead>
            <tr style="background-color: #f2f2f2;">
              <th class="border px-4 py-2" width="110" style="border: 1px solid #333; background-color: lightgray; ">
                Name</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">Location</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">EA</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">Size</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">Product ID</th>
            </tr>
          </thead>
          <tbody>
          
          
          <!-- 백단에서 올린 세션을 불러와 main변수에 담음 --> 
          <%List<MainDTO> main = (List<MainDTO>)session.getAttribute("AI"); %>
           <%for (int i = 0; i < main.size(); i++){ /* 포문을 열어 html을 세션의 길이만큼 반복 */  
     /*       MainDTO asd =   */
           		%>
            <tr>
              <td class="border px-4 py-2" id="name<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_pdt_name() %></td>
              <td class="border px-4 py-2" id="location<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_pdt_size() %></td>
              <td class="border px-4 py-2" id="ea<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_factory_name() %></td>
              <td class="border px-4 py-2" id="size<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_line_num() %></td>
              <td class="border px-4 py-2" id="time<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_date() %>
              </td>
            </tr>
          <%  }  %> <!-- 포문 닫기 -->
     	  
            

            </tr>
          </tbody>
        </table>
        
      </div>
      <!-- (구)rtsp 주소 갱신 버튼 및 함수 -->
      <input type="text" id="newSrc" placeholder="새로운 src 값을 입력하세요">
      <button onclick="changeSrc()">수정하기</button>
		<script>
		function changeSrc() {
		  // HTML 요소를 선택합니다.
		  var camElement = document.getElementById('cam');
		  var newSrcElement = document.getElementById('newSrc');
		
		  // 'src' 속성을 변경합니다.
		  camElement.src = newSrcElement.value;
		}
		</script>
    </div>
  </section>

</body>

</html>