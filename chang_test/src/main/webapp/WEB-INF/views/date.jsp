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

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css" />

  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>

  <style>
    /* fullcalendar.js CSS */
    .calendar_container {
      background: #f1f8ff;
      width: 100%;
      height: 100vh;
      overflow-y: hidden;
    }

    #calendar {
      width: 100%;
      height: 100vh;
    }

    .calendar_title {
      font-size: 2.4rem;
      font-weight: 700;
      color: #3e4551;
      margin-right: 1.5rem;
    }

    .calendar_breadcrumb {
      font-size: 1.2rem;
      color: #afafaf;
    }

    .fc-toolbar-chunk {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .fc .fc-button {
      padding: 0;
    }

    .fc .fc-button .fc-icon {
      margin: 0 2rem;
    }

    .fc-direction-ltr .fc-toolbar>*> :not(:first-child) {
      margin-left: 0em;
    }

    .fc .fc-toolbar.fc-header-toolbar {
      margin-bottom: 1.2rem;
    }

    .fc .fc-scrollgrid-liquid {
      height: 83%;
      background: #fff;
      border-radius: 10px;
    }

    .fc .fc-view-harness-active>.fc-view {
      height: 100%;
    }

    .fc .fc-col-header-cell-cushion {
      padding: 12px 4px;
      font-size: 2rem;
      color: #4e4e4e;
    }

    .fc .fc-daygrid-day-top {
      position: absolute;
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      font-size: 1.6rem;
      color: #959595;
    }

    .fc-day-other {
      background: #f9f9fb;
    }

    /* 이전 달 날짜 삭제 */
    /* .fc-day-other .fc-daygrid-day-number {
        display: none;
      } */
    .fc .fc-daygrid-day-number {
      padding: 0.4rem 0.4rem 1.6rem 0.4rem;
      font-size: 1.6rem;
    }

    .fc-event-title {
      font-size: 1.6rem;
    }

    .fc .fc-daygrid-day-frame {
      height: 8rem;
      padding: 0.4rem;
    }

    .fc-daygrid-event {
      padding: 0.2rem;
    }

    .fc-event-resizable {
      padding: 0.2rem;
    }

    .fc-daygrid-event {
      margin-bottom: 0.4rem;
    }

    .fc .fc-daygrid-day.fc-day-today {
      font-weight: 700;
    }

    /* 버튼 */
    .fc .fc-toolbar-title {
      font-size: 2.4rem;
      font-weight: 700;
      color: #4e4e4e;
      /* margin: 0 1.2rem; */
    }

    .fc .fc-button-primary {
      font-size: 2rem;
      border: none;
      background: transparent;
      color: #b1c9e9;
    }

    .fc .fc-button-primary:not(:disabled):active,
    .fc .fc-button-primary:not(:disabled).fc-button-active {
      background-color: transparent;
      color: #b1c9e9;
      border: none;
      outline: none;
    }

    .fc .fc-button-primary:hover,
    .fc .fc-button-primary:focus {
      background-color: transparent;
      border-color: none;
      border: none;
      outline: none;
      box-shadow: none;
      color: #b1c9e9;
    }
  </style>
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

    <!-- 아코디언 메뉴 -->
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

    <!-- 메인화면 -->
    <div class="dashboard">
      <div class="calendar_container">
        <div class="calendar_title_wrapper">
          <strong class="calendar_title">일정 관리</strong>
          <span class="calendar_breadcrumb">일정 관리 > 월간 일정</span>
        </div>
        <div id="calendar"></div>
      </div>
    </div>

    <!-- 일정 추가 모달 내용 -->
    <div class="schedule_add">
      <div class="schedule_modal_title">
        <h3>일정 추가</h3>
      </div>
      <div class="schedule_info">
        <div class="schedule_title">
          <span>일정 제목</span>
          <input type="text" placeholder="일정 제목을 입력해주세요" />
        </div>
        <div class="schedule_date">
          <p>기간</p>
          <div class="schedule_date_input">
            <input type="date" style="width:100%" />
            <span>~</span>
            <input type="date" style="width:100%" />
          </div>
        </div>
        <div class="schedule_content">
          <p>내용</p>
          <input type="text" placeholder="일정 내용을 입력해주세요" />
        </div>
      </div>
      <div class="schedule_btn">
        <button class="xbtn">취소</button>
        <button class="xbtn schedule_save">저장</button>
      </div>
    </div>
    <div class="background_black"></div>

    <!-- 일정 수정 모달 내용 -->
    <div class="schedule_modify">
      <div class="schedule_modal_title">
        <h3>일정 수정</h3>
      </div>
      <div class="schedule_info">
        <div class="schedule_title">
          <span>일정 제목</span>
          <input type="text" placeholder="일정 제목을 입력해주세요" />
        </div>
        <div class="schedule_date">
          <p>기간</p>
          <div class="schedule_date_input">
            <input type="date" />
            <span>~</span>
            <input type="date" />
          </div>
        </div>
        <div class="schedule_content">
          <p>내용</p>
          <input type="text" placeholder="일정 내용을 입력해주세요" />
        </div>
      </div>
      <div class="schedule_btn">
        <button class="xbtn">취소</button>
        <button class="xbtn schedule_save">수정</button>
      </div>
    </div>
    <div class="background_black"></div>

    <!-- 모달 내용 => 1번라인수정ver -->
    <!-- <div class="orderlist_modal">
        <div class="orderlist_modal_title">
          <h3>1번 라인 수정</h3>
          <div class="modal_btn">
            <button>수정완료</button>
            <div class="xbtn">
              <img src="./img/ico_modal_xbtn.png" alt="" />
            </div>
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
                  <p>AppleT 50EA</p>
                  <p>BrownSpriteT 50EA</p>
                  <p>ModalPajama 50EA</p>
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
                <div class="item_workevent work_02">
                  <p>박철수</p>
                  <p>김철수</p>
                  <p>강철수</p>
                </div>
              </div>
            </div>
          </div>
          <div class="mk_item_02">
            <div class="idx_mk_item">
              <div class="idx_mk_title border">옷정보</div>
              <div class="idx_mk_detail">
                <div class="border"><p>AppleT</p></div>
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
                <div><p>김철수</p></div>
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
      <div class="background_black"></div> -->
  </section>
  <!-- 버튼 -->
  <div class="date_button">
    <button class="schedule_btn_add">
      <img src="./img/ico_date_check.png" alt="" />
    </button>
    <button class="schedule_btn_modify">
      <img src="./img/ico_date_write.png" alt="" />
    </button>
    <button>
      <img src="./img/ico_date_delete.png" alt="" />
    </button>
  </div>

  <script>
    document.addEventListener("DOMContentLoaded", function () {
      var calendarEl = document.getElementById("calendar");
      var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: "dayGridMonth", // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
        headerToolbar: {
          // 헤더에 표시할 툴 바
          start: "",
          center: "prev title next",
          end: "",
        },
        titleFormat: function (date) {
          return date.date.year + ". " + (parseInt(date.date.month) + 1);
        },
        //initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
        selectable: true, // 달력 일자 드래그 설정가능
        droppable: true,
        editable: true,
        nowIndicator: true, // 현재 시간 마크
        locale: "ko", // 한국어 설정
        events: [
          // 이벤트 배열 정의
          {
            title: "AppleT 발주기간",
            start: "2023-11-01", // 시작 일시
            end: "2023-11-07", // 종료 일시
            color: "#7F79F9",
          },
          {
            title: "부자재 발주",
            start: "2023-11-09",
            end: "2023-11-09",
            color: "#FF8373",
          },
          {
            title: "일정 추가",
            start: "2023-11-09",
            end: "2023-11-09",
            color: "#13CAFF",
          },
          {
            title: "일정 추가",
            start: "2023-11-16",
            end: "2023-11-16",
            color: "#FFDA83",
          },
          {
            title: "일정",
            start: "2023-11-21",
            end: "2023-11-21",
            color: "#7F79F9",
          },
          {
            title: "일정",
            start: "2023-11-24",
            end: "2023-11-24",
            color: "#13CAFF",
          },
          {
            title: "일정",
            start: "2023-11-24",
            end: "2023-11-24",
            color: "#5FE3A1",
          },
          {
            title: "일정",
            start: "2023-11-27",
            end: "2023-11-27",
            color: "#13CAFF",
          },
        ],

        dayCellContent: function (e) {
          // "일" 글자를 제거하고 숫자만을 남기기
          e.dayNumberText = e.dayNumberText.replace(/일/g, "");
        },


      });

      calendar.render();
    });
  </script>
</body>

</html>