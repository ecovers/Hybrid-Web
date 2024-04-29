<%@page import="com.example.demo.dto.MemberDTO"%>
<%@page import="com.example.demo.dto.MainDTO"%>
<%@page import="java.util.List"%>
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
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/common.js" defer></script>

  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <script>
    function confirmLogout() {
      if (confirm("로그아웃하시겠습니까?")) {
        window.location.href = "logout.html";
      }
    }
  </script>
</head>

<body style="overflow-y: hidden">
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
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()"/></div>
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
    <div class="dashboard">
      <div class="title_wrap">
        <h2 class="title">
          <p>회원 목록</p>
          <p>회원 관리 > 회원 목록</p>
        </h2>
        <button class="btn btn_check lineplus">버튼</button>
      </div>
      <!-- 내용 추가 -->
      <div style=" height: 580px; font-size: 14pt; border-collapse: collapse; overflow-y: scroll;">
        <table style="width: 100%;">
          <thead>
            <tr style="background-color: #f2f2f2;">
              <th class="border px-4 py-2" width="100" style="border: 1px solid #ddd; padding: 8px;">ID</th>
              <th class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">Password</th>
              <th class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">State</th>
              <th class="border px-4 py-2" width="200" style="border: 1px solid #ddd; padding: 8px;">추가</th>
              <th class="border px-4 py-2" width="200" style="border: 1px solid #ddd; padding: 8px;">추가</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <% List<MemberDTO> Member = (List<MemberDTO>)session.getAttribute("member"); %>
              <%=Member.get(0).getId() %>
              <%for(int i = 0; i < Member.size(); i++ ){ %>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;"><%=Member.get(i).getId() %></td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;"><%=Member.get(i).getPw() %></td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;"><%=Member.get(i).getState() %></td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <%} %>
          <!--   <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr>
            <tr>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">A-1</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">BrownStripe T
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">30</td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
              <td class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">2023-08-09 18:12
              </td>
            </tr> -->
          </tbody>
        </table>
      </div>

    </div>
  </section>
  <!-- 모달창 -->
  <div class="orderlist_modal">
    <div class="orderlist_modal_title">
      <h3>모달창으로 이벤트 실행</h3>
      <div class="modal_btn">
        <div class="xbtn"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
      </div>
    </div>
    <div class="top_item">
      <div class="mk_item_01">

      </div>
    </div>
    <div class="bottom_item">

    </div>
  </div>
  <div class="background_black"></div>
</body>

</html>