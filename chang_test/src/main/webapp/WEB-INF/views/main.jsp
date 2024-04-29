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
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/common.js" defer></script>
  <script src="js/chart.js" defer></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>

  <script>
    function confirmLogout() {
      if (confirm("�α׾ƿ��Ͻðڽ��ϱ�?")) {
        window.location.href = "login_page.html";
      }
    }
  </script>
</head>

<body style="overflow-y: hidden">
  <!-- ��� ���� -->
  <header>
    <div class="header_wrap">
      <h1 class="logo"><img src="" alt="" /></h1>
      <p> ECOVERS ���� ����͸� �ý���</p>
      <div class="hd_icon">
        <div class="alarm_modal">
          <button class="bell">
            <img src="img/ico_bell.png" alt="" />
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
          <!-- �̹����� "image" Ŭ������ �߰��մϴ�. -->
          <div><img src="img/ico_people.png" alt="" onclick="confirmLogout()" /></div>
          <div><img src="img/ico_arrow_people.png" alt="" class="" /></div>
        </div>
      </div>
    </div>
  </header>
  <section>
    <!-- �޴�(���ڵ��)  -->
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
            <div class="index_txt_btn" onClick="location.href='login_page.html'"><button>�α׾ƿ�</button></div>
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
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>Dashboard</p>
        </h2>
        <!-- ���� - 1�� -->
        <div class="dashboard_line1">
          <!-- ������ ���귮 �� -->
          <div class="line1_tab today_output">
            <div class="today_output_title">
              <h3>������ ���귮</h3>
              <p>
                <span>���귮 ���</span>
                <span>2023.11.20 15:56:00</span>
              </p>
            </div>
            <div class="today_output_list">
              <ul class="output_list">
                <!-- ���� ���� -->
                <li class="output_item">
                  <!-- ���귮 �ؽ�Ʈ -->
                  <p>
                    <span>���� ����</span>
                    <span>+888</span>
                  </p>
                  <!-- ���귮 ������ -->
                  <div><img src="img/ico_expected.png" alt="" /></div>
                </li>
                <!-- ������ -->
                <li class="output_item">
                  <!-- ���귮 �ؽ�Ʈ -->
                  <p>
                    <span>������</span>
                    <span>+888</span>
                  </p>
                  <!-- ���귮 ������ -->
                  <div><img src="img/ico_making.png" alt="" /></div>
                </li>
                <!-- ���� �Ϸ� -->
                <li class="output_item">
                  <!-- ���귮 �ؽ�Ʈ -->
                  <p>
                    <span>���� ����</span>
                    <span>+888</span>
                  </p>
                  <!-- �������̺� ������ -->
                  <div><img src="img/ico_done.png" alt="" /></div>
                </li>
                <!-- ���� ���� -->
                <li class="output_item">
                  <!-- ���귮 �ؽ�Ʈ -->
                  <p>
                    <span>���� ����</span>
                    <span>+888</span>
                  </p>
                  <!-- ���귮 ������ -->
                  <div class=""><img src="img/ico_error.png" alt="" /></div>
                </li>
              </ul>
            </div>
          </div>
          <!-- ������ ���� �� -->
          <div class="line1_tab date">
            <h3 class="date_title">������ ����</h3>
            <div class="date_list_wrap">
              <ul class="date_list">
                <li class="date_item">
                  <div>11/20</div>
                  <p>Ƽ���� 100�� ����</p>
                </li>
                <li class="date_item">
                  <div>11/20</div>
                  <p>Ƽ���� 100�� ����</p>
                </li>
                <li class="date_item">
                  <div>11/20</div>
                  <p>Ƽ���� 100�� ����</p>
                </li>
                <li class="date_item">
                  <div>11/20</div>
                  <p>Ƽ���� 100�� ����</p>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- ���� - 2�� -->
        <div class="dashboard_line2">
          <!-- �ֱ� ���귮 �� -->
          <div class="line2_tab output">
            <h3>�ֱ� ���귮</h3>
            <canvas id="output-chart" class="output" width="400" height="150"></canvas>
          </div>

          <!-- �ֱ� �ֹ��� �� -->
          <div class="line2_tab order">
            <h3>�ֱ� �ֹ���</h3>
            <canvas id="order-chart" class="order" width="400" height="150"></canvas>
          </div>

          <!-- ���� ���κ� �� �� -->
          <div class="line2_tab produce">
            <h3>���� ���κ� ��</h3>
            <canvas id="produce-chart" class="produce" width="400" height="150"></canvas>
          </div>
        </div>

        <!-- ���� - 3�� -->
        <div class="dashboard_line3">
          <!-- �ֱ� �Ǹŷ� -->
          <div class="line3_tab sell">
            <h3>�ֱ� �Ǹŷ�</h3>
            <canvas id="sell-chart" class="sell" width="400" height="100"></canvas>
          </div>

          <div class="line3_tab target">
            <h3>��ǥ �Ǹŷ�</h3>
            <canvas id="target-chart" class="target" width="400" height="100"></canvas>
          </div>
        </div>
      </div>
  </section>
</body>

</html>