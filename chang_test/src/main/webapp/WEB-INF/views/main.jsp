<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>이커버스</title>
  <link rel="stylesheet" href="css/common.css" />
  <link rel="stylesheet" href="css/reset.css" />
  <link rel="stylesheet" href="css/main.css" />
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/common.js" defer></script>
  <script src="js/chart.js" defer></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>

  <script>
    function confirmLogout() {
      if (confirm("로그아웃하시겠습니까?")) {
        window.location.href = "login_page.html";
      }
    }
  </script>
</head>

<body style="overflow-y: hidden">
  <!-- 헤더 영역 -->
  <header>
    <div class="header_wrap">
      <h1 class="logo"><img src="" alt="" /></h1>
      <p> ECOVERS 통합 모니터링 시스템</p>
      <div class="hd_icon">
        <div class="alarm_modal">
          <button class="bell">
            <img src="img/ico_bell.png" alt="" />
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
          <!-- 이미지에 "image" 클래스를 추가합니다. -->
          <div><img src="img/ico_people.png" alt="" onclick="confirmLogout()" /></div>
          <div><img src="img/ico_arrow_people.png" alt="" class="" /></div>
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
            <img src="img/ico_people_big.png" alt="" />
          </div>
          <div class="index_txt">
            <h2>User</h2>
            <p>User님 환영합니다!</p>
            <div class="index_txt_btn" onClick="location.href='login_page.html'"><button>로그아웃</button></div>
          </div> -->
        </div>
        <!-- 아코디언 메뉴 -->
        <div class="accordion">
          <ul class="menu">
            <li>
              <a href="main" class="cate on">
                <span><img src="img/ico_home.png" alt="" /></span>
                <span>Home</span>
              </a>
            </li>
            <li>
              <a href="AI" class="cate">
                <span><img src="img/ico_ai.png" alt="" /></span>
                <span>실시간 AI CCTV</span>
              </a>
              <!-- <div>
                <p>소메뉴1</p>
              </div> -->
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_box.png" alt="" /></span>
                <span>생산관리</span>
              </a>
              <div>
                <p onClick="location.href='makeline'">공장 정보</p></a>
                <p onClick="location.href='viewtasks'">작업 지시 및 조회</p>
                <p onClick="location.href='#'">총 생산 수량</p>
                <p onClick="location.href='#'">생산 일보</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_product.png" alt="" /></span>
                <span>물품관리</span>
              </a>
              <div>
                <p onClick="location.href='production'">제품 재고 현황</p>
                <p onClick="location.href='#'">자재 보관</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_date.png" alt="" /></span>
                <span>일정관리</span>
              </a>
              <div>
                <p onClick="location.href='date'">일정 등록/관리</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_article.png" alt="" /></span>
                <span>자재관리</span>
              </a>
              <div>
                <p onClick="location.href='item'">자재 발주 및 조회</p>
                <p>자재 보관</p>
                <p>자재 입고 현황</p>
                <p>자재 재고 조회</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_order.png" alt="" /></span>
                <span>주문관리</span>
              </a>
              <div>
                <p onClick="location.href='orderlist'">주문 목록</p>
                <p>거래처 관리</p>
                <p>출고 및 조회</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_member.png" alt="" /></span>
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
    <!-- 메인화면 -->
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>Dashboard</p>
        </h2>
        <!-- 메인 - 1열 -->
        <div class="dashboard_line1">
          <!-- 오늘의 생산량 탭 -->
          <div class="line1_tab today_output">
            <div class="today_output_title">
              <h3>오늘의 생산량</h3>
              <p>
                <span>생산량 요약</span>
                <span>2023.11.20 15:56:00</span>
              </p>
            </div>
            <div class="today_output_list">
              <ul class="output_list">
                <!-- 생산 예정 -->
                <li class="output_item">
                  <!-- 생산량 텍스트 -->
                  <p>
                    <span>생산 예정</span>
                    <span>+888</span>
                  </p>
                  <!-- 생산량 아이콘 -->
                  <div><img src="img/ico_expected.png" alt="" /></div>
                </li>
                <!-- 생산중 -->
                <li class="output_item">
                  <!-- 생산량 텍스트 -->
                  <p>
                    <span>생산중</span>
                    <span>+888</span>
                  </p>
                  <!-- 생산량 아이콘 -->
                  <div><img src="img/ico_making.png" alt="" /></div>
                </li>
                <!-- 생산 완료 -->
                <li class="output_item">
                  <!-- 생산량 텍스트 -->
                  <p>
                    <span>생산 예정</span>
                    <span>+888</span>
                  </p>
                  <!-- 생산테이블 아이콘 -->
                  <div><img src="img/ico_done.png" alt="" /></div>
                </li>
                <!-- 생산 오류 -->
                <li class="output_item">
                  <!-- 생산량 텍스트 -->
                  <p>
                    <span>생산 예정</span>
                    <span>+888</span>
                  </p>
                  <!-- 생산량 아이콘 -->
                  <div class=""><img src="img/ico_error.png" alt="" /></div>
                </li>
              </ul>
            </div>
          </div>
          <!-- 오늘의 일정 탭 -->
          <div class="line1_tab date">
            <h3 class="date_title">오늘의 일정</h3>
            <div class="date_list_wrap">
              <ul class="date_list">
                <li class="date_item">
                  <div>11/20</div>
                  <p>티셔츠 100개 생산</p>
                </li>
                <li class="date_item">
                  <div>11/20</div>
                  <p>티셔츠 100개 생산</p>
                </li>
                <li class="date_item">
                  <div>11/20</div>
                  <p>티셔츠 100개 생산</p>
                </li>
                <li class="date_item">
                  <div>11/20</div>
                  <p>티셔츠 100개 생산</p>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- 메인 - 2열 -->
        <div class="dashboard_line2">
          <!-- 최근 생산량 탭 -->
          <div class="line2_tab output">
            <h3>최근 생산량</h3>
            <canvas id="output-chart" class="output" width="400" height="150"></canvas>
          </div>

          <!-- 최근 주문량 탭 -->
          <div class="line2_tab order">
            <h3>최근 주문량</h3>
            <canvas id="order-chart" class="order" width="400" height="150"></canvas>
          </div>

          <!-- 생산 라인별 비교 탭 -->
          <div class="line2_tab produce">
            <h3>생산 라인별 비교</h3>
            <canvas id="produce-chart" class="produce" width="400" height="150"></canvas>
          </div>
        </div>

        <!-- 메인 - 3열 -->
        <div class="dashboard_line3">
          <!-- 최근 판매량 -->
          <div class="line3_tab sell">
            <h3>최근 판매량</h3>
            <canvas id="sell-chart" class="sell" width="400" height="100"></canvas>
          </div>

          <div class="line3_tab target">
            <h3>목표 판매량</h3>
            <canvas id="target-chart" class="target" width="400" height="100"></canvas>
          </div>
        </div>
      </div>
  </section>
</body>

</html>