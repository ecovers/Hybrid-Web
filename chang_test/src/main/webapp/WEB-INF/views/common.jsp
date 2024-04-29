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
  <script src="./static/js/jquery-3.7.1.min.js"></script>
  <script src="./static/js/common.js" defer></script>
</head>

<body>
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
          <div><img src="./img/ico_people.png" alt="" /></div>
          <div><img src="./img/ico_arrow_people.png" alt="" /></div>
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
          <div class="index_img">
            <img src="./img/ico_people_big.png" alt="" />
          </div>
          <div class="index_txt">
            <h2>User</h2>
            <p>User�� ȯ���մϴ�!</p>
            <div class="index_txt_btn" onClick="location.href='main.html'"><button>�α׾ƿ�</button></div>
          </div>
        </div>
        <!-- ���ڵ�� �޴� -->
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
                <span>�ǽð� AI CCTV</span>
              </a>
              <div>
                <p>�Ҹ޴�1</p>
              </div>
            </li>
            <li>
              <a href="makeline.html" class="cate">
                <span><img src="./img/ico_box.png" alt="" /></span>
                <span>������</span>
              </a>
            </li>
            <li>
              <a href="common.html" class="cate">
                <span><img src="./img/ico_product.png" alt="" /></span>
                <span>�������</span>
              </a>
              <div>
                <p>�Ҹ޴�1</p>
                <p>�Ҹ޴�3</p>
              </div>
            </li>
            <li>
              <a href="date.html" class="cate">
                <span><img src="./img/ico_date.png" alt="" /></span>
                <span>��������</span>
              </a>
            </li>
            <li>
              <a href="common.html" class="cate">
                <span><img src="./img/ico_article.png" alt="" /></span>
                <span>��ǰ����</span>
              </a>
              <div>
                <p>�Ҹ޴�1</p>
                <p>�Ҹ޴�2</p>
              </div>
            </li>
            <li>
              <a href="orderlist.html" class="cate">
                <span><img src="./img/ico_order.png" alt="" /></span>
                <span>�ֹ�����</span>
              </a>
            </li>
            <li>
              <a href="common.html" class="cate">
                <span><img src="./img/ico_member.png" alt="" /></span>
                <span>ȸ������</span>
              </a>
              <div>
                <p>�Ҹ޴�1</p>
                <p>�Ҹ޴�2</p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- �� ������ ���� �߰�  -->
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>TEST PAGE</p>
          <p>���� ���� �־�� �մϴ�.</p>
        </h2>
      </div>
      <div class="orderpage_list"></div>
    </div>
  </section>
</body>

</html>