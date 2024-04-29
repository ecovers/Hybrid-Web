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
  <link rel="stylesheet" href="css/sub.css" />
  <script src="./static/js/jquery-3.7.1.min.js"></script>
  <script src="./static/js/common.js" defer></script>
</head>

<body>
  <!-- 헤더 영역 -->
  <header>
    <div class="header_wrap">
      <h1 class="logo"><img src="./img/img_logo.png" alt="" /></h1>
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
          <div><img src="./img/ico_people.png" alt="" /></div>
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
          <div class="index_img">
            <img src="./img/ico_people_big.png" alt="" />
          </div>
          <div class="index_txt">
            <h2>User</h2>
            <p>User님 환영합니다!</p>
            <div class="index_txt_btn" onClick="location.href='main.html'"><button>로그아웃</button></div>
          </div>
        </div>
        <!-- 아코디언 메뉴 -->
        <div class="accordion">
          <ul class="menu">
            <li>
              <a href="main.html" class="cate ">
                <span><img src="./img/ico_home.png" alt="" /></span>
                <span>Home</span>
              </a>
            </li>
            <li>
              <a href="http://192.168.50.55:5000" class="cate">
                <span><img src="./img/ico_ai.png" alt="" /></span>
                <span>실시간 AI CCTV</span>
              </a>
              <div>
                <p>소메뉴1</p>
              </div>
            </li>
            <li>
              <a href="makeline.html" class="cate">
                <span><img src="./img/ico_box.png" alt="" /></span>
                <span>재고관리</span>
              </a>
            </li>
            <li>
              <a href="common.html" class="cate">
                <span><img src="./img/ico_product.png" alt="" /></span>
                <span>생산관리</span>
              </a>
              <div>
                <p>소메뉴1</p>
                <p>소메뉴3</p>
              </div>
            </li>
            <li>
              <a href="date.html" class="cate">
                <span><img src="./img/ico_date.png" alt="" /></span>
                <span>일정관리</span>
              </a>
            </li>
            <li>
              <a href="common.html" class="cate">
                <span><img src="./img/ico_article.png" alt="" /></span>
                <span>물품관리</span>
              </a>
              <div>
                <p>소메뉴1</p>
                <p>소메뉴2</p>
              </div>
            </li>
            <li>
              <a href="orderlist.html" class="cate">
                <span><img src="./img/ico_order.png" alt="" /></span>
                <span>주문관리</span>
              </a>
            </li>
            <li>
              <a href="common.html" class="cate">
                <span><img src="./img/ico_member.png" alt="" /></span>
                <span>회원관리</span>
              </a>
              <div>
                <p>소메뉴1</p>
                <p>소메뉴2</p>
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
          <p>TEST PAGE</p>
          <p>내용 집어 넣어야 합니다.</p>
        </h2>
      </div>
      <div class="orderpage_list"></div>
    </div>
  </section>
</body>

</html>