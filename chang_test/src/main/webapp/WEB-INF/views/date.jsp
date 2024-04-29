<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>��Ŀ����</title>
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

    /* ���� �� ��¥ ���� */
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

    /* ��ư */
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
      if (confirm("�α׾ƿ��Ͻðڽ��ϱ�?")) {
        window.location.href = "logout.html";
      }
    }
  </script>
</head>

<body style="overflow-y: hidden">
  <!-- ��� ���� -->
  <header>
    <div class="header_wrap">
      <h1 class="logo"><img src="./img/img_logo.png" alt="" /></h1>
      <p>ECOVERS ���� ����͸� �ý���</p>
      <div class="hd_icon">
        <div class="alarm_modal">
          <button class="bell">
            <img src="./img/ico_bell.png" alt="" />
          </button>
          <div class="alarm">
            <div class="modal_content" title="Ŭ���ϸ� â�� �����ϴ�.">
              <h3>�˸�</h3>
              <a href="" class="alarm-modal_contents alarm-data-1">
                <p class="ico_dot dot_color_red"></p>
                <span>11.23</span>
                <div>
                  <strong>���ο� �ֹ��� ���Խ��ϴ�.</strong>
                  <p class="modal_content_text">
                    �縻 100�ӷ� �ֹ��� ���Խ��ϴ�. Ȯ�� ��Ź...
                  </p>
                </div>
              </a>
              <a href="" class="alarm-modal_contents alarm-data-2">
                <p class="ico_dot dot_color_blue"></p>
                <span>11.23</span>
                <div>
                  <strong>�ֹ� ������ �ӹ��߽��ϴ�.</strong>
                  <p class="modal_content_text">
                    Ƽ���� 100���� ���� ������ ���ñ����Դϴ�.
                  </p>
                </div>
              </a>
              <a href="" class="alarm-modal_contents alarm-data-3">
                <p class="ico_dot dot_color_blue"></p>
                <span>11.23</span>
                <div>
                  <strong>���� ���κ� ��</strong>
                  <p class="modal_content_text">���� ���κ� ��</p>
                </div>
              </a>
            </div>
            <button class="alarm_contents_bt_text">���� ���κ� ��</button>
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

    <!-- ���ڵ�� �޴� -->
    <div class="nav_wrap">
      <div class="menu_wrap">
        <!-- ȸ������ -->
        <div class="index">
          <!-- <div class="index_img">
            <img src="img/ico_people_big.png" alt="" />
          </div>
          <div class="index_txt">
            <h2>User</h2>
            <p>User�� ȯ���մϴ�!</p>
            <div class="index_txt_btn" onClick="location.href='main.html'"><button>�α׾ƿ�</button></div>
          </div> -->
        </div>
        <!-- ���ڵ�� �޴� -->
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
                <span>�ǽð� AI CCTV</span>
              </a>
              <!-- <div>
                <p>�Ҹ޴�1</p>
              </div> -->
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_box.png" alt="" /></span>
                <span>�������</span>
              </a>
              <div>
                <p onClick="location.href='makeline'">���� ����</p></a>
                <p onClick="location.href='viewtasks'">�۾� ���� �� ��ȸ</p>
                <p onClick="location.href='#'">�� ���� ����</p>
                <p onClick="location.href='#'">���� �Ϻ�</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_product.png" alt="" /></span>
                <span>��ǰ����</span>
              </a>
              <div>
                <p onClick="location.href='production'">��ǰ ��� ��Ȳ</p>
                <p onClick="location.href='#'">���� ����</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_date.png" alt="" /></span>
                <span>��������</span>
              </a>
              <div>
                <p onClick="location.href='date'">���� ���/����</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_article.png" alt="" /></span>
                <span>�������</span>
              </a>
              <div>
                <p onClick="location.href='item'">���� ���� �� ��ȸ</p>
                <p>���� ����</p>
                <p>���� �԰� ��Ȳ</p>
                <p>���� ��� ��ȸ</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_order.png" alt="" /></span>
                <span>�ֹ�����</span>
              </a>
              <div>
                <p onClick="location.href='orderlist'">�ֹ� ���</p>
                <p>�ŷ�ó ����</p>
                <p>��� �� ��ȸ</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="img/ico_member.png" alt="" /></span>
                <span>ȸ������</span>
              </a>
              <div>
                <p onClick="location.href='member'">ȸ������</p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- ����ȭ�� -->
    <div class="dashboard">
      <div class="calendar_container">
        <div class="calendar_title_wrapper">
          <strong class="calendar_title">���� ����</strong>
          <span class="calendar_breadcrumb">���� ���� > ���� ����</span>
        </div>
        <div id="calendar"></div>
      </div>
    </div>

    <!-- ���� �߰� ��� ���� -->
    <div class="schedule_add">
      <div class="schedule_modal_title">
        <h3>���� �߰�</h3>
      </div>
      <div class="schedule_info">
        <div class="schedule_title">
          <span>���� ����</span>
          <input type="text" placeholder="���� ������ �Է����ּ���" />
        </div>
        <div class="schedule_date">
          <p>�Ⱓ</p>
          <div class="schedule_date_input">
            <input type="date" style="width:100%" />
            <span>~</span>
            <input type="date" style="width:100%" />
          </div>
        </div>
        <div class="schedule_content">
          <p>����</p>
          <input type="text" placeholder="���� ������ �Է����ּ���" />
        </div>
      </div>
      <div class="schedule_btn">
        <button class="xbtn">���</button>
        <button class="xbtn schedule_save">����</button>
      </div>
    </div>
    <div class="background_black"></div>

    <!-- ���� ���� ��� ���� -->
    <div class="schedule_modify">
      <div class="schedule_modal_title">
        <h3>���� ����</h3>
      </div>
      <div class="schedule_info">
        <div class="schedule_title">
          <span>���� ����</span>
          <input type="text" placeholder="���� ������ �Է����ּ���" />
        </div>
        <div class="schedule_date">
          <p>�Ⱓ</p>
          <div class="schedule_date_input">
            <input type="date" />
            <span>~</span>
            <input type="date" />
          </div>
        </div>
        <div class="schedule_content">
          <p>����</p>
          <input type="text" placeholder="���� ������ �Է����ּ���" />
        </div>
      </div>
      <div class="schedule_btn">
        <button class="xbtn">���</button>
        <button class="xbtn schedule_save">����</button>
      </div>
    </div>
    <div class="background_black"></div>

    <!-- ��� ���� => 1�����μ���ver -->
    <!-- <div class="orderlist_modal">
        <div class="orderlist_modal_title">
          <h3>1�� ���� ����</h3>
          <div class="modal_btn">
            <button>�����Ϸ�</button>
            <div class="xbtn">
              <img src="./img/ico_modal_xbtn.png" alt="" />
            </div>
          </div>
        </div>
        <div class="top_item">
          <div class="mk_item_01">
            <div class="modal_cate_mk">
              <div class="mk_title">ȸ��</div>
              <div class="mk_item_list">
                <div class="mk_item border">
                  <div class="modal_index_mk">
                    <select name="" id="">
                      <option value="">����</option>
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
              <p class="mk_title">�Ⱓ</p>
              <div class="modal_index">
                <input type="date" />
                <span>~</span>
                <input type="date" />
              </div>
            </div>
            <div class="modal_cate_mk">
              <p class="mk_title">�޸�</p>
              <div class="modal_index">
                <input type="text" />
              </div>
            </div>
            <div class="modal_cate_mk member">
              <p class="mk_title">���</p>
              <div class="mk_item">
                <div class="modal_index_mk_02">
                  <select name="" id="">
                    <option value="">����</option>
                  </select>
                </div>
                <div class="item_workevent work_02">
                  <p>��ö��</p>
                  <p>��ö��</p>
                  <p>��ö��</p>
                </div>
              </div>
            </div>
          </div>
          <div class="mk_item_02">
            <div class="idx_mk_item">
              <div class="idx_mk_title border">������</div>
              <div class="idx_mk_detail">
                <div class="border"><p>AppleT</p></div>
                <div class="border mk_flex">
                  <p>���� ���</p>
                  <p>50EA</p>
                </div>
                <div class="border mk_flex">
                  <p>����Ǿ��ִ� ��</p>
                  <p>30EA</p>
                </div>
                <div class="border"><a href="#">�۾����ü�</a></div>
              </div>
            </div>
            <div>
              <div class="idx_mk_title border">�ο� ����</div>
              <div class="idx_mk_detail">
                <div><p>��ö��</p></div>
                <div class="border mk_flex">
                  <p>���� �Ҵ� �۾�</p>
                  <p>6��</p>
                </div>
                <div class="border mk_flex">
                  <p>������ �۾� ����</p>
                  <p>AppleT 50EA</p>
                </div>
                <div class="border">
                  <p>2023.01.01~2023.01.01</p>
                  <p>��ö��, ��ö��</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="bottom_item">
          <div class="now_work">���� �۾�</div>
          <div class="btm_item_wrap">
            <div class="btm_item">
              <div>�Ҵ� ����</div>
              <div>AppleT 50EA</div>
            </div>
            <div class="btm_item">
              <div>�Ⱓ</div>
              <div>2023.01.01 ~2023.01.06</div>
            </div>
            <div class="btm_item">
              <div>�Ҵ� �ο�</div>
              <div>��ö��, ��ö��, ��ö��</div>
            </div>
          </div>
        </div>
      </div>
      <div class="background_black"></div> -->
  </section>
  <!-- ��ư -->
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
        initialView: "dayGridMonth", // �ʱ� �ε� �ɶ� ���̴� Ķ���� ȭ��(�⺻ ����: ��)
        headerToolbar: {
          // ����� ǥ���� �� ��
          start: "",
          center: "prev title next",
          end: "",
        },
        titleFormat: function (date) {
          return date.date.year + ". " + (parseInt(date.date.month) + 1);
        },
        //initialDate: '2021-07-15', // �ʱ� ��¥ ���� (�������� ������ ���� ��¥�� ���δ�.)
        selectable: true, // �޷� ���� �巡�� ��������
        droppable: true,
        editable: true,
        nowIndicator: true, // ���� �ð� ��ũ
        locale: "ko", // �ѱ��� ����
        events: [
          // �̺�Ʈ �迭 ����
          {
            title: "AppleT ���ֱⰣ",
            start: "2023-11-01", // ���� �Ͻ�
            end: "2023-11-07", // ���� �Ͻ�
            color: "#7F79F9",
          },
          {
            title: "������ ����",
            start: "2023-11-09",
            end: "2023-11-09",
            color: "#FF8373",
          },
          {
            title: "���� �߰�",
            start: "2023-11-09",
            end: "2023-11-09",
            color: "#13CAFF",
          },
          {
            title: "���� �߰�",
            start: "2023-11-16",
            end: "2023-11-16",
            color: "#FFDA83",
          },
          {
            title: "����",
            start: "2023-11-21",
            end: "2023-11-21",
            color: "#7F79F9",
          },
          {
            title: "����",
            start: "2023-11-24",
            end: "2023-11-24",
            color: "#13CAFF",
          },
          {
            title: "����",
            start: "2023-11-24",
            end: "2023-11-24",
            color: "#5FE3A1",
          },
          {
            title: "����",
            start: "2023-11-27",
            end: "2023-11-27",
            color: "#13CAFF",
          },
        ],

        dayCellContent: function (e) {
          // "��" ���ڸ� �����ϰ� ���ڸ��� �����
          e.dayNumberText = e.dayNumberText.replace(/��/g, "");
        },


      });

      calendar.render();
    });
  </script>
</body>

</html>