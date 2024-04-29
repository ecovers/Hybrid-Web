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

  <script>
    function confirmLogout() {
      if (confirm("로그아웃하시겠습니까?")) {
        window.location.href = "login_page.html";
      }
    }
  </script>
  <style>
    .orderpage_detail_table {
      width: 100%;
      max-width: 100%;
      height: 100%;
      border-radius: 10px 10px 0 0;
      filter: drop-shadow(0px 4px 25px rgba(171, 180, 193, 0.25));
      overflow-y: scroll;
      -ms-overflow-style: none;
    }

    table.orderpage_detail_table_wrapper {
      width: 100%;
      max-width: 100%;
      background: #fff;
      filter: drop-shadow(0px 4px 25px rgba(171, 180, 193, 0.25));
      text-align: center;
      font-size: 1.6rem;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
      color: #4e4e4e;
      width: 100%;
      max-width: 100%;
      overflow-y: scroll;
      
    }
  </style>
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
          <!-- 이미지에 "image" 클래스를 추가합니다. -->
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()" /></div>
          <div><img src="./img/ico_arrow_people.png" alt="" class="" /></div>
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
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>생산 관리</p>
          <p>생산 관리 > 작업 지시 및 조회</p>
        </h2>
      </div>
      <div class="orderpage_detail_table">
        <table class="orderpage_detail_table_wrapper">
          <colgroup>
            <col width="3%" />
            <col width="1%" />
            <col width="10%" />
            <col width="10%" />
            <col width="8%" />
            <col width="4%" />
            <col width="10%" />
            <col width="10%" />
            <col width="4%" />
            <col width="8%" />
            <col width="6%" />
            <col width="7%" />
            <col width="8%" />
            <col width="4%" />
            <col width="7%" />
          </colgroup>
          <thead>
            <tr class="orderpage_detail_tr_top">
              <th rowspan="2"></th>
              <th rowspan="2"></th>
              <th colspan="4">품목정보</th>
              <th rowspan="2">납기일</th>
              <th rowspan="2">출하예정일</th>
              <th colspan="5">금액정보</th>
              <th rowspan="2">참조</th>
              <th rowspan="2"></th>
            </tr>
            <tr class="orderpage_detail_tr_bt">
              <th>품목코드</th>
              <th>품목명</th>
              <th>규격</th>
              <th>단위</th>
              <th>수량</th>
              <th>단가</th>
              <th>공급가액</th>
              <th>부가세</th>
              <th>총금액</th>
            </tr>
          </thead>

          <tbody>
            <!-- 첫번째 줄 -->
            <tr class="table_detail">
              <td><input type="checkbox" name="" id="" /></td>
              <td></td>
              <td>20171119100…</td>
              <td>과일바구니(대)</td>
              <td>바구니(대)</td>
              <td>EA</td>
              <td>2023-11-30</td>
              <td>2023-11-30</td>
              <td id="quantity1">10</td>
              <td id="unitPrice1">96,000</td>
              <td id="valueOfSupply1">960,000</td>
              <td id="surtax1">96,000</td>
              <td id="extendedPrice1">1,056,000</td>
              <td></td>
              <td></td>
            </tr>

            <!--두번째 줄 -->
            <tr class="table_detail">
              <td><input type="checkbox" name="" id="" /></td>
              <td></td>
              <td>20171119100…</td>
              <td>강화도어 손…</td>
              <td>120-1002</td>
              <td>EA</td>
              <td>2023-11-30</td>
              <td>2023-11-30</td>
              <td id="quantity2">10</td>
              <td id="unitPrice2">23,000</td>
              <td id="valueOfSupply2">460,000</td>
              <td id="surtax2">46,000</td>
              <td id="extendedPrice2">506,000</td>
              <td></td>
              <td></td>
            </tr>

            <!--세번째 줄 -->
            <tr class="table_detail">
              <td><input type="checkbox" name="" id="" /></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td id="quantity3"></td>
              <td id="unitPrice3"></td>
              <td id="valueOfSupply3"></td>
              <td id="surtax3"></td>
              <td id="extendedPrice3"></td>
              <td></td>
              <td></td>
            </tr>

            <tr class="table_detail">
              <td><input type="checkbox" name="" id="" /></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td id="quantity4"></td>
              <td id="unitPrice4"></td>
              <td id="valueOfSupply4"></td>
              <td id="surtax4"></td>
              <td id="extendedPrice4"></td>
              <td></td>
              <td></td>
            </tr>
          </tbody>

          <tfoot>
            <tr>
              <td></td>
              <td></td>
              <td colspan="6">합계</td>
              <td id="totalQuantity"></td>
              <td id="totalUnitPrice"></td>
              <td id="totalValueOfSupply"></td>
              <td id="totalSurtax"></td>
              <td id="totalExtendedPrice"></td>
              <td colspan="2"></td>
            </tr>
            <tr class="content_total">
              <td colspan="15" class="content_total">합계: 2</td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </section>
</body>

</html>