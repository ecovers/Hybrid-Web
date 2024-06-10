<%@page import="com.example.demo.dto.MakepdtDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.example.demo.dto.MakelineDTO"%>

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

  <!-- 모달 라이브러리 -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script> -->

  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
  <script src="js/chart.js"></script>
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
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()" /></div>
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
          <p>생산관리</p>
          <p>공장 정보</p>
        </h2>
        <div class="orderlist_btn_wrap">
          <button class="btn btn_check lineplus">영상 보기</button>
          <button class="btn btn_check lineplus">라인 추가</button>
        </div>
      </div>
      <div class="line_wrap">
      
          <%List<MakelineDTO> Make = (List<MakelineDTO>)session.getAttribute("make"); %>
          <%List<MakepdtDTO> pdt = (List<MakepdtDTO>)session.getAttribute("pdt"); %>
          <%int linenum = (Integer)session.getAttribute("linenum"); %>
      
		<% for (int i = 0; i < pdt.size(); i++){ %>
        <div class="line_item">
          <div class="line_item_txt_wrap">
            <div>
              <div class="line_item_txt">
                <h3>1번 라인</h3>
                <div class="line_btn">
                  <button class="btn_check lineplus1 btn_modify">수정</button>
                  <button class="btn_del line_content_del">삭제</button>
                </div>
              </div>
              <div class="line">
                <div class="line_bar"></div>
                <div class="line_txt">
                  <p>진행도</p>
                  <p>50%</p>
                </div>
              </div>
            </div>
            <div><img src="./img/img_ongoling.png" alt="" /></div>
          </div>
          

          
          
          <div class="index_list_wrap">
            <ul class="index_list">
              <li class="idx_item">
                <p>할당 업무</p> <!-- #첫번째 할당업무 #ㄸㅉ##################################### -->
                <p><%=Make.get(0).getLive_total_pdt_name() %></p>
              </li>
              <li class="idx_item">
                <p>생산 기간</p>
                <p><%=pdt.get(0).getMake_pdt_start_date() %> ~ <%=pdt.get(0).getMake_pdt_end_date() %></p>
              </li>
              <li class="idx_item">
                <p>그룹 멤버</p>
                <p><%=pdt.get(0).getMake_pdt_name() %></p>
              </li>
              <li class="idx_item">
                <p>중요 사항</p>
                <p><%=pdt.get(0).getMake_pdt_note() %></p>
              </li>
            </ul>
          </div>
        </div>
        
        <% } %>
        
        <div class="line_item second">
          <div class="line_item_txt_wrap">
            <div>
              <div class="line_item_txt">
                <h3>2번 라인</h3>
                <div class="line_btn">
                  <button class="btn_check lineplus2 btn_modify">수정</button>
                  <button class="btn_del line_content_del">삭제</button>
                </div>
              </div>
              <div class="line">
                <div class="line_bar"></div>
                <div class="line_txt">
                  <p>진행도</p>
                  <p>80%</p>
                </div>
              </div>
            </div>
            <div><img src="./img/img_ongoling.png" alt="" /></div>
          </div>
          <div class="index_list_wrap">
            <ul class="index_list">
              <li class="idx_item">
                <p>할당 업무</p>
                <p><% %></p> <!-- 두번째 할당업무 ################################################## -->
              </li>
              <li class="idx_item">
                <p>생산 기간</p>
                <p>2023.01.01 ~01.06</p>
              </li>
              <li class="idx_item">
                <p>그룹 멤버</p>
                <p>김철수, 하철수, 박철수</p>
              </li>
              <li class="idx_item">
                <p>중요 사항</p>
                <p>할당 업무</p>
              </li>
            </ul>
          </div>
        </div>
        <div class="line_item third">
          <div class="line_item_txt_wrap">
            <div>
              <div class="line_item_txt">
                <h3>3번 라인</h3>
                <div class="line_btn">
                  <button class="btn_check lineplus3 btn_modify">수정</button>
                  <button class="btn_del line_content_del">삭제</button>
                </div>
              </div>
              <div class="line">
                <div class="line_bar"></div>
                <div class="line_txt">
                  <p>진행도</p>
                  <p class="green">100%</p>
                </div>
              </div>
            </div>
            <div><img src="./img/img_finished.png" alt="" /></div>
          </div>
          <div class="index_list_wrap">
            <ul class="index_list">
              <li class="idx_item">
                <p>할당 업무</p>
                <p>가방 100개, 신발 50개</p>
              </li>
              <li class="idx_item">
                <p>생산 기간</p>
                <p>2023.01.01 ~01.06</p>
              </li>
              <li class="idx_item">
                <p>그룹 멤버</p>
                <p>김철수, 하철수, 박철수</p>
              </li>
              <li class="idx_item">
                <p>중요 사항</p>
                <p>할당 업무</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="line_chart_wrap">
        <div class="line_chart_item">
          <h3>금일 생산&물량수</h3>
          <canvas id="today-chart" class="todayChart" width="400" height="130"></canvas>
        </div>

        <div class="line_chart_item">
          <h3>생산별 수량</h3>
          <canvas id="amount-chart" class="amountChart" width="400" height="130"></canvas>
        </div>
      </div>
    </div>
  </section>

  <!-- 1번라인 수정 버튼 모달창 내부 정보 -->
  <!-- <div id="modify1" class="modal_modify" style="z-index: 10">
      <div class="madal_header ex1_modal">
        <h3>1번 라인 수정</h3>
        <div class="btn_madal_header">
          <button>라인 추가</button>
          <a href="#"> <img src="/img/ico_modal_xbtn.png" alt="" /></a>
        </div>
      </div>
      <div>
        <table style="border: 1px solid; border-collapse: collapse">
          <tr style="border: solid 1px">
            <th style="border: solid 1px">Text</th>
            <td style="border: 1px solid">
              <input type="text" name="text" size="20" style="width: 100%" />
            </td>
          </tr>
          <tr style="border: solid 1px">
            <th style="border: solid 1px">Textarea</th>
            <td style="border: 1px solid">
              <textarea name="content" rows="10" style="width: 100%"></textarea>
            </td>
          </tr>
        </table>
      </div>

      <p>Thanks for clicking. That felt good.</p>
      <input type="submit" value="" />
    </div> -->

  <!-- 수정 클릭 모달 -->

  <!-- 라인 추가 모달창 변경ver -->
  <div class="orderlist_modal">
    <div class="orderlist_modal_title">
      <h3>1번 라인 수정</h3>
      <div class="modal_btn">
        <button>라인 추가</button>
        <div class="xbtn"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
      </div>
    </div>
    <div class="top_item">
      <div class="mk_item_01">
        <div class="modal_cate_mk">
          <div class="mk_title">회사</div>
          <div class="mk_item_list">
            <div class="mk_item border">
              <div class="modal_index_mk">
                <select name="" id="">
                  <option value="">본사</option>
                </select>
              </div>
              <div class="number_ea">
                <input type="number" />
                <p>+EA</p>
              </div>
            </div>
            <div class="item_workevent">
              <div class="orderlist_company_del">
                <p>AppleT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>BrownSpriteT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>ModalPajama 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">기간</p>
          <div class="modal_index">
            <input type="date" />
            <span>~</span>
            <input type="date" />
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">메모</p>
          <div class="modal_index">
            <input type="text" />
          </div>
        </div>
        <div class="modal_cate_mk member">
          <p class="mk_title">멤버</p>
          <div class="mk_item">
            <div class="modal_index_mk_02">
              <select name="" id="">
                <option value="">본사</option>
              </select>
            </div>
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>박철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>김철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>강철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">옷정보</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
            <div class="border mk_flex">
              <p>남은 재고</p>
              <p>50EA</p>
            </div>
            <div class="border mk_flex">
              <p>예상되어있는 양</p>
              <p>30EA</p>
            </div>
            <div class="border"><a href="#">작업지시서</a></div>
          </div>
        </div>
        <div>
          <div class="idx_mk_title border">인원 정보</div>
          <div class="idx_mk_detail">
            <div>
              <p>김철수</p>
            </div>
            <div class="border mk_flex">
              <p>현재 할당 작업</p>
              <p>6개</p>
            </div>
            <div class="border mk_flex">
              <p>마지막 작업 내용</p>
              <p>AppleT 50EA</p>
            </div>
            <div class="border">
              <p>2023.01.01~2023.01.01</p>
              <p>김철수, 이철수</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="bottom_item">
      <div class="now_work">현재 작업</div>
      <div class="btm_item_wrap">
        <div class="btm_item">
          <div>할당 업무</div>
          <div>AppleT 50EA</div>
        </div>
        <div class="btm_item">
          <div>기간</div>
          <div>2023.01.01 ~2023.01.06</div>
        </div>
        <div class="btm_item">
          <div>할당 인원</div>
          <div>김철수, 박철수, 최철수</div>
        </div>
      </div>
    </div>
  </div>
  <div class="background_black"></div>

  <!-- 1번라인 수정 모달창 -->
  <div class="orderlist_modal1">
    <div class="orderlist_modal_title">
      <h3>1번 라인 수정</h3>
      <div class="modal_btn">
        <button>라인 추가</button>
        <div class="xbtn1"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
      </div>
    </div>
    <div class="top_item">
      <div class="mk_item_01">
        <div class="modal_cate_mk">
          <div class="mk_title">회사</div>
          <div class="mk_item_list">
            <div class="mk_item border">
              <div class="modal_index_mk">
                <select name="" id="">
                  <option value="">본사</option>
                </select>
              </div>
              <div class="number_ea">
                <input type="number" />
                <p>+EA</p>
              </div>
            </div>
            <div class="item_workevent">
              <div class="orderlist_company_del">
                <p>AppleT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>BrownSpriteT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>ModalPajama 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">기간</p>
          <div class="modal_index">
            <input type="date" />
            <span>~</span>
            <input type="date" />
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">메모</p>
          <div class="modal_index">
            <input type="text" />
          </div>
        </div>
        <div class="modal_cate_mk member">
          <p class="mk_title">멤버</p>
          <div class="mk_item">
            <div class="modal_index_mk_02">
              <select name="" id="">
                <option value="">본사</option>
              </select>
            </div>
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>박철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>김철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>강철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">옷정보</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
            <div class="border mk_flex">
              <p>남은 재고</p>
              <p>50EA</p>
            </div>
            <div class="border mk_flex">
              <p>예상되어있는 양</p>
              <p>30EA</p>
            </div>
            <div class="border"><a href="#">작업지시서</a></div>
          </div>
        </div>
        <div>
          <div class="idx_mk_title border">인원 정보</div>
          <div class="idx_mk_detail">
            <div>
              <p>김철수</p>
            </div>
            <div class="border mk_flex">
              <p>현재 할당 작업</p>
              <p>6개</p>
            </div>
            <div class="border mk_flex">
              <p>마지막 작업 내용</p>
              <p>AppleT 50EA</p>
            </div>
            <div class="border">
              <p>2023.01.01~2023.01.01</p>
              <p>김철수, 이철수</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="bottom_item">
      <div class="now_work">현재 작업</div>
      <div class="btm_item_wrap">
        <div class="btm_item">
          <div>할당 업무</div>
          <div>AppleT 50EA</div>
        </div>
        <div class="btm_item">
          <div>기간</div>
          <div>2023.01.01 ~2023.01.06</div>
        </div>
        <div class="btm_item">
          <div>할당 인원</div>
          <div>김철수, 박철수, 최철수</div>
        </div>
      </div>
    </div>
  </div>
  <div class="background_black1"></div>

  <!-- 2번라인 수정 모달창 -->
  <div class="orderlist_modal2">
    <div class="orderlist_modal_title">
      <h3>2번 라인 수정</h3>
      <div class="modal_btn">
        <button>라인 추가</button>
        <div class="xbtn2"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
      </div>
    </div>
    <div class="top_item">
      <div class="mk_item_01">
        <div class="modal_cate_mk">
          <div class="mk_title">회사</div>
          <div class="mk_item_list">
            <div class="mk_item border">
              <div class="modal_index_mk">
                <select name="" id="">
                  <option value="">본사</option>
                </select>
              </div>
              <div class="number_ea">
                <input type="number" />
                <p>+EA</p>
              </div>
            </div>
            <div class="item_workevent">
              <div class="orderlist_company_del">
                <p>AppleT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>BrownSpriteT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>ModalPajama 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">기간</p>
          <div class="modal_index">
            <input type="date" />
            <span>~</span>
            <input type="date" />
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">메모</p>
          <div class="modal_index">
            <input type="text" />
          </div>
        </div>
        <div class="modal_cate_mk member">
          <p class="mk_title">멤버</p>
          <div class="mk_item">
            <div class="modal_index_mk_02">
              <select name="" id="">
                <option value="">본사</option>
              </select>
            </div>
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>박철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>김철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>강철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">옷정보</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
            <div class="border mk_flex">
              <p>남은 재고</p>
              <p>50EA</p>
            </div>
            <div class="border mk_flex">
              <p>예상되어있는 양</p>
              <p>30EA</p>
            </div>
            <div class="border"><a href="#">작업지시서</a></div>
          </div>
        </div>
        <div>
          <div class="idx_mk_title border">인원 정보</div>
          <div class="idx_mk_detail">
            <div>
              <p>김철수</p>
            </div>
            <div class="border mk_flex">
              <p>현재 할당 작업</p>
              <p>6개</p>
            </div>
            <div class="border mk_flex">
              <p>마지막 작업 내용</p>
              <p>AppleT 50EA</p>
            </div>
            <div class="border">
              <p>2023.01.01~2023.01.01</p>
              <p>김철수, 이철수</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="bottom_item">
      <div class="now_work">현재 작업</div>
      <div class="btm_item_wrap">
        <div class="btm_item">
          <div>할당 업무</div>
          <div>AppleT 50EA</div>
        </div>
        <div class="btm_item">
          <div>기간</div>
          <div>2023.01.01 ~2023.01.06</div>
        </div>
        <div class="btm_item">
          <div>할당 인원</div>
          <div>김철수, 박철수, 최철수</div>
        </div>
      </div>
    </div>
  </div>
  <div class="background_black2"></div>

  <!-- 3번라인 수정 모달창 -->
  <div class="orderlist_modal3">
    <div class="orderlist_modal_title">
      <h3>3번 라인 수정</h3>
      <div class="modal_btn">
        <button>라인 추가</button>
        <div class="xbtn3"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
      </div>
    </div>
    <div class="top_item">
      <div class="mk_item_01">
        <div class="modal_cate_mk">
          <div class="mk_title">회사</div>
          <div class="mk_item_list">
            <div class="mk_item border">
              <div class="modal_index_mk">
                <select name="" id="">
                  <option value="">본사</option>
                </select>
              </div>
              <div class="number_ea">
                <input type="number" />
                <p>+EA</p>
              </div>
            </div>
            <div class="item_workevent">
              <div class="orderlist_company_del">
                <p>AppleT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>BrownSpriteT 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_company_del">
                <p>ModalPajama 50EA</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">기간</p>
          <div class="modal_index">
            <input type="date" />
            <span>~</span>
            <input type="date" />
          </div>
        </div>
        <div class="modal_cate_mk">
          <p class="mk_title">메모</p>
          <div class="modal_index">
            <input type="text" />
          </div>
        </div>
        <div class="modal_cate_mk member">
          <p class="mk_title">멤버</p>
          <div class="mk_item">
            <div class="modal_index_mk_02">
              <select name="" id="">
                <option value="">본사</option>
              </select>
            </div>
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>박철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>김철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>강철수</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">옷정보</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
            <div class="border mk_flex">
              <p>남은 재고</p>
              <p>50EA</p>
            </div>
            <div class="border mk_flex">
              <p>예상되어있는 양</p>
              <p>30EA</p>
            </div>
            <div class="border"><a href="#">작업지시서</a></div>
          </div>
        </div>
        <div>
          <div class="idx_mk_title border">인원 정보</div>
          <div class="idx_mk_detail">
            <div>
              <p>김철수</p>
            </div>
            <div class="border mk_flex">
              <p>현재 할당 작업</p>
              <p>6개</p>
            </div>
            <div class="border mk_flex">
              <p>마지막 작업 내용</p>
              <p>AppleT 50EA</p>
            </div>
            <div class="border">
              <p>2023.01.01~2023.01.01</p>
              <p>김철수, 이철수</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="bottom_item">
      <div class="now_work">현재 작업</div>
      <div class="btm_item_wrap">
        <div class="btm_item">
          <div>할당 업무</div>
          <div>AppleT 50EA</div>
        </div>
        <div class="btm_item">
          <div>기간</div>
          <div>2023.01.01 ~2023.01.06</div>
        </div>
        <div class="btm_item">
          <div>할당 인원</div>
          <div>김철수, 박철수, 최철수</div>
        </div>
      </div>
    </div>
  </div>
  <div class="background_black3"></div>
</body>

</html>