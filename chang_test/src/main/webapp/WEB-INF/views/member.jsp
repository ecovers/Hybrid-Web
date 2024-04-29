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
  <title>��Ŀ����</title>
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
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()"/></div>
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
          <!-- <div class="index_img">
            <img src="./img/ico_people_big.png" alt="" />
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
    <div class="dashboard">
      <div class="title_wrap">
        <h2 class="title">
          <p>ȸ�� ���</p>
          <p>ȸ�� ���� > ȸ�� ���</p>
        </h2>
        <button class="btn btn_check lineplus">��ư</button>
      </div>
      <!-- ���� �߰� -->
      <div style=" height: 580px; font-size: 14pt; border-collapse: collapse; overflow-y: scroll;">
        <table style="width: 100%;">
          <thead>
            <tr style="background-color: #f2f2f2;">
              <th class="border px-4 py-2" width="100" style="border: 1px solid #ddd; padding: 8px;">ID</th>
              <th class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">Password</th>
              <th class="border px-4 py-2" style="border: 1px solid #ddd; padding: 8px;">State</th>
              <th class="border px-4 py-2" width="200" style="border: 1px solid #ddd; padding: 8px;">�߰�</th>
              <th class="border px-4 py-2" width="200" style="border: 1px solid #ddd; padding: 8px;">�߰�</th>
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
  <!-- ���â -->
  <div class="orderlist_modal">
    <div class="orderlist_modal_title">
      <h3>���â���� �̺�Ʈ ����</h3>
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