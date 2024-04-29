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
        window.location.href = "logout.html";
      }
    }
  </script>
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
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()"/></div>
          <div><img src="./img/ico_arrow_people.png" alt="" /></div>
        </div>
      </div>
    </div>
  </header>
  <section>
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
    <!-- 주문 목록 -->
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>주문목록</p>
          <p>재고 관리 > 주문 목록</p>
        </h2>
        <div class="orderlist_btn_wrap">
          <button class="btn btn_check">조회</button>
          <button class="btn btn_new">신규</button>
          <button class="btn btn_modify">수정</button>
          <button class="btn copy">복사</button>
          <button class="btn delete">삭제</button>
        </div>
      </div>
      <!-- 목록 카테고리 표 -->

      <div class="orderlist_list_wrap">
        <div class="orderlist_first_line">
          <div class="orderlist_item item_com">
            <div class="order_item_com order_title border">회사</div>
            <div class="order_item_index order_index border">
              <input type="text" />
              <select name="" id="">
                <option value="">본사</option>
                <option value="">지사</option>
              </select>
              <div class="btn_plus_wrap">
                <button class="btn_plus">
                  <img src="./img/ico-plus.png" alt="" />
                </button>
              </div>
            </div>
          </div>
          <div class="orderlist_item item_orderdate">
            <div class="order_item_od_title order_title border">
              주문서등록일
            </div>
            <div class="order_item_od_index order_index border">
              <input type="date" />
              <span>~</span>
              <input type="date" />
              <div class="btn_plus_wrap">
                <button class="btn_plus">
                  <img src="./img/ico-plus.png" alt="" />
                </button>
              </div>
            </div>
          </div>
          <div class="orderlist_item item_orderend">
            <div class="order_item_end_title order_title border">
              최종상태
            </div>
            <div class="order_item_end_index order_index border">
              <label>
                <input type="radio" name="contact" value="mail" />
                <span>최종버전</span>
              </label>
              <label>
                <input type="radio" name="contact" value="mail" />
                <span>전체버전</span>
              </label>
            </div>
          </div>
          <div class="orderlist_item item_used">
            <div class="order_item_used_title order_title border">
              사용유무
            </div>
            <div class="order_item_used_index order_index border">
              <select name="" id="">
                <option value="">본사</option>
                <option value="">지사</option>
              </select>
            </div>
          </div>
        </div>
        <div class="orderlist_second_line">
          <div class="orderlist_item">
            <div class="order_title order_item_account_title border">
              거래처
            </div>
            <div class="order_index border">
              <input type="text" />
              <input type="text" />
              <div class="btn_plus_wrap">
                <button class="btn_search btn_search_customer">
                  <img src="./img/ico-search.png" alt="" />
                </button>
              </div>
            </div>
          </div>
          <div class="orderlist_item">
            <div class="order_title order_item_stuff_title border">품목</div>
            <div class="order_index border">
              <input type="text" />
              <input type="text" />
              <div class="btn_plus_wrap">
                <button class="btn_search btn_search_item">
                  <img src="./img/ico-search.png" alt="" />
                </button>
              </div>
            </div>
          </div>
          <div class="orderlist_item">
            <div class="order_title order_item_manager_title border">
              담당자
            </div>
            <div class="order_index border">
              <input type="text" />
              <div class="btn_plus_wrap">
                <button class="btn_search btn_search_personInCharge">
                  <img src="./img/ico-search.png" alt="" />
                </button>
              </div>
            </div>
          </div>
          <div class="orderlist_item">
            <div class="order_title order_item_stufflist_title border">
              주문서품목
            </div>
            <div class="order_index order_index_stufflist border">
              <input type="text" />
            </div>
          </div>
        </div>
      </div>

      <!--목록 테이블 -->
      <div class="orderpage_list">
        <div class="orderpage_list_title">
          <img src="./img/ico_bar.png" alt="" />
          <p>목록</p>
        </div>
        <div class="orderpage_list_table">
          <table class="orderpage_list_table_wrapper">
            <colgroup>
              <col width="3%" />
              <col width="3%" />
              <col width="2%" />
              <col width="4%" />
              <col width="6%" />
              <col width="10%" />
              <col width="4%" />
              <col width="5%" />
              <col width="6%" />
              <col width="8%" />
              <col width="6%" />
              <col width="7%" />
              <col width="8%" />
              <col width="12%" />
              <col width="5%" />
              <col width="6%" />
              <col width="5%" />
            </colgroup>
            <thead>
              <th class="order_table_input"></th>
              <th class="order_table_no"></th>
              <th class="order_table_blank"></th>
              <th class="order_table_factory">공장</th>
              <th class="order_table_company">회사</th>
              <th class="order_table_statement">전표번호</th>
              <th class="order_table_ver">버전</th>
              <th class="order_table_condition">상태</th>
              <th class="order_table_customer">거래처</th>
              <th class="order_table_registerDate">등록일</th>
              <th class="order_table_type">거래유형</th>
              <th class="order_table_charge">담당자</th>
              <th class="order_table_total">총금액</th>
              <th class="order_table_creationDate">생성일</th>
              <th class="order_table_creator">생성자</th>
              <th class="order_table_correctionDate">수정일</th>
              <th class="order_table_amender">수정자</th>
            </thead>

            <tbody>
              <!-- 첫번째 줄 -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td>1</td>
                <td></td>
                <td>본사</td>
                <td>필피엠크리에이터</td>
                <td>0D20180108001</td>
                <td><img src="./img/ico_blue.png" alt="" /></td>
                <td>종결</td>
                <td>포스코</td>
                <td>2023-11-23</td>
                <td>부가세적용</td>
                <td>시스템관리자</td>
                <td id="table_amount1">1,570,800</td>
                <td>2023-11-23 17:38:57</td>
                <td>관리자</td>
                <td>2023-11-23…</td>
                <td>관리자</td>
              </tr>

              <!--두번째 줄 -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td>2</td>
                <td></td>
                <td>본사</td>
                <td>필피엠크리에이터</td>
                <td>0D20180108001</td>
                <td><img src="./img/ico_green.png" alt="" /></td>
                <td>종결</td>
                <td></td>
                <td>2023-11-23</td>
                <td>부가세적용</td>
                <td>DEMO</td>
                <td id="table_amount2">55,000</td>
                <td>2023-11-23 17:38:57</td>
                <td>DEMO</td>
                <td>2023-11-23…</td>
                <td>DEMO</td>
              </tr>

              <!--세번째 줄 -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td>3</td>
                <td></td>
                <td>본사</td>
                <td>필피엠크리에이터</td>
                <td>0D20180108001</td>
                <td><img src="./img/ico_green.png" alt="" /></td>
                <td>등록완료</td>
                <td></td>
                <td>2023-11-23</td>
                <td>부가세적용</td>
                <td>DEMO</td>
                <td id="table_amount3">101,200</td>
                <td>2023-11-23 17:38:57</td>
                <td>DEMO</td>
                <td>2023-11-23…</td>
                <td>DEMO</td>
              </tr>

              <!--네번째 줄 -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td id="table_amount4"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>

              <!--다섯번째 줄 -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td id="table_amount5"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>

              <!--여섯번째 줄 -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td id="table_amount6"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>

              <!--일곱번째 줄 -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td id="table_amount7"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>

            <tfoot>
              <tr>
                <td></td>
                <td colspan="2"></td>
                <td colspan="4">합계</td>
                <td colspan="5">합계</td>
                <td id="table_aggregate"></td>
                <td colspan="4"></td>
              </tr>
              <tr>
                <td colspan="17" class="content_total">합계: 3</td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>

      <!--상세 테이블 -->
      <div class="orderpage_detail">
        <div class="orderpage_detail_title">
          <img src="./img/ico_bar.png" alt="" />
          <p>상세</p>
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
    </div>
  </section>

  <div class="orderlist_modal">
    <div class="orderlist_modal_title">
      <h3>주문 추가</h3>
      <div class="modal_btn">
        <button>작성완료</button>
        <button>임시저장</button>
        <div class="xbtn"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
      </div>
    </div>
    <div class="">
      <div class="cate_wrap_01">
        <div class="modal_cate">
          <p class="modal_title">회사</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">회사명</option>
            </select>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">사업장</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">본사</option>
            </select>
          </div>
        </div>
      </div>
      <div class="cate_wrap_01">
        <div class="modal_cate">
          <p class="modal_title">문서번호</p>
          <div class="modal_index"><input type="text" /></div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">등록일</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">본사</option>
            </select>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">주문서상태</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">본사</option>
            </select>
          </div>
        </div>
      </div>
      <div class="cate_wrap_01">
        <div class="modal_cate">
          <p class="modal_title">담당자</p>
          <div class="modal_index">
            <input type="text" />
            <button class="btn_search_add on">
              <img src="./img/ico-search_gray.png" alt="" />
            </button>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">담당자연락처</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">담당자이메일</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
            <span>@</span>
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
      </div>
      <div class="cate_wrap_02">
        <div class="modal_cate">
          <p class="modal_title">담당자</p>
          <div class="modal_index">
            <input type="text" />
            <div><img src="./img/ico-search_gray.png" alt="" /></div>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">거래처 담당자</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">거래처이메일</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
            <span>@</span>
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
      </div>
      <div class="cate_wrap_03">
        <div class="modal_cate">
          <p class="modal_title">거래 유형</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">본사</option>
            </select>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">비고</p>
          <div class="modal_index">
            <input type="text" placeholder="출력시 표시" />
          </div>
        </div>
      </div>
      <div class="modal_detail_chart">
        <div class="modal_detail_title">
          <div><img src="./img/ico_bar.png" alt="" /></div>
          <p>상세</p>
        </div>
        <div class="chart_button">
          <button>견적서 불러오기</button>
          <button>영업내역 불러오기</button>
          <button>품목정보 불러오기</button>
          <button>재고현황 불러오기</button>
          <button>추가</button>
          <button>삭제</button>
        </div>
      </div>
      <div>
        <div class="detail_chart">
          <div class="ch_cate">
            <div class="ch_blank_02 border"></div>
            <div class="ch_info_wrap border">
              <div class="ch_infomation">품목정보</div>
              <div class="ch_info">
                <div class="border">품목명</div>
                <div class="border">규격</div>
                <div class="border">단위</div>
              </div>
            </div>
            <div class="ch_date border">납기일</div>
            <div class="ch_go border">출하예정일</div>
            <div class="ch_money_wrap">
              <div class="ch_money border">금액정보</div>
              <div class="ch_coin border">
                <div class="ch_quantity border">수량</div>
                <div class="ch_price border">단가</div>
                <div class="ch_value border">공급가액</div>
                <div class="ch_vat border">부가세</div>
                <div class="ch_total_price border">총금액</div>
              </div>
            </div>
            <div class="ch_reference border">참조</div>
          </div>
          <div class="ch_index">
            <div class="ch_blank_03"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="background_black"></div>

  <!-- 거래처 돋보기 클릭시 모달창 내용 -->
  <div class="customer_modal">
    <div class="customer_modal_title">
      <h3>거래처 찾기</h3>
    </div>
    <div class="customer_info">
      <div class="customer_search">
        <input type="text" placeholder="거래처 검색" />
        <button class="customer_search_btn">
          <img src="./img/ico-search-black.png" alt="" />
        </button>
      </div>
      <div class="customer_content">
        <p class="customer_search_name"></p>
      </div>
    </div>
    <div class="customer_btn">
      <button class="xbtn">취소</button>
      <button class="xbtn customer_select">선택</button>
    </div>
  </div>

  <!-- 품목 돋보기 클릭시 모달창 내용 -->
  <div class="item_modal">
    <div class="item_modal_title">
      <h3>품목 찾기</h3>
    </div>
    <div class="item_info">
      <div class="item_search">
        <input type="text" placeholder="품목 검색" />
        <button class="item_search_btn">
          <img src="./img/ico-search-black.png" alt="" />
        </button>
      </div>
      <div class="item_content">
        <p class="item_search_name"></p>
      </div>
    </div>
    <div class="item_btn">
      <button class="xbtn">취소</button>
      <button class="xbtn item_select">선택</button>
    </div>
  </div>

  <!-- 담당자 돋보기 클릭시 모달창 내용 -->
  <div class="personInCharge_modal">
    <div class="personInCharge_modal_title">
      <h3>담당자 찾기</h3>
    </div>
    <div class="personInCharge_info">
      <div class="personInCharge_search">
        <input type="text" placeholder="담당자 검색" />
        <button class="personInCharge_search_btn">
          <img src="./img/ico-search-black.png" alt="" />
        </button>
      </div>
      <div class="personInCharge_content">
        <p class="personInCharge_search_name"></p>
      </div>
    </div>
    <div class="personInCharge_btn">
      <button class="xbtn">취소</button>
      <button class="xbtn personInCharge_select">선택</button>
    </div>
  </div>
  <div class="background_black"></div>
</body>

</html>