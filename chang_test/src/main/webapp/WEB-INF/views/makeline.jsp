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

  <!-- ��� ���̺귯�� -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script> -->

  <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
  <script src="js/chart.js"></script>
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
    <!-- �ֹ� ��� -->
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>�������</p>
          <p>���� ����</p>
        </h2>
        <div class="orderlist_btn_wrap">
          <button class="btn btn_check lineplus">���� ����</button>
          <button class="btn btn_check lineplus">���� �߰�</button>
        </div>
      </div>
      <div class="line_wrap">
        <div class="line_item">
          <div class="line_item_txt_wrap">
            <div>
              <div class="line_item_txt">
                <h3>1�� ����</h3>
                <div class="line_btn">
                  <button class="btn_check lineplus1 btn_modify">����</button>
                  <button class="btn_del line_content_del">����</button>
                </div>
              </div>
              <div class="line">
                <div class="line_bar"></div>
                <div class="line_txt">
                  <p>���൵</p>
                  <p>50%</p>
                </div>
              </div>
            </div>
            <div><img src="./img/img_ongoling.png" alt="" /></div>
          </div>
          <div class="index_list_wrap">
            <ul class="index_list">
              <li class="idx_item">
                <p>�Ҵ� ����</p>
                <p>���� 100��, �Ź� 50��</p>
              </li>
              <li class="idx_item">
                <p>���� �Ⱓ</p>
                <p>2023.01.01 ~01.06</p>
              </li>
              <li class="idx_item">
                <p>�׷� ���</p>
                <p>��ö��, ��ö��, ��ö��</p>
              </li>
              <li class="idx_item">
                <p>�߿� ����</p>
                <p>�Ҵ� ����</p>
              </li>
            </ul>
          </div>
        </div>
        <div class="line_item second">
          <div class="line_item_txt_wrap">
            <div>
              <div class="line_item_txt">
                <h3>2�� ����</h3>
                <div class="line_btn">
                  <button class="btn_check lineplus2 btn_modify">����</button>
                  <button class="btn_del line_content_del">����</button>
                </div>
              </div>
              <div class="line">
                <div class="line_bar"></div>
                <div class="line_txt">
                  <p>���൵</p>
                  <p>80%</p>
                </div>
              </div>
            </div>
            <div><img src="./img/img_ongoling.png" alt="" /></div>
          </div>
          <div class="index_list_wrap">
            <ul class="index_list">
              <li class="idx_item">
                <p>�Ҵ� ����</p>
                <p>���� 100��, �Ź� 50��</p>
              </li>
              <li class="idx_item">
                <p>���� �Ⱓ</p>
                <p>2023.01.01 ~01.06</p>
              </li>
              <li class="idx_item">
                <p>�׷� ���</p>
                <p>��ö��, ��ö��, ��ö��</p>
              </li>
              <li class="idx_item">
                <p>�߿� ����</p>
                <p>�Ҵ� ����</p>
              </li>
            </ul>
          </div>
        </div>
        <div class="line_item third">
          <div class="line_item_txt_wrap">
            <div>
              <div class="line_item_txt">
                <h3>3�� ����</h3>
                <div class="line_btn">
                  <button class="btn_check lineplus3 btn_modify">����</button>
                  <button class="btn_del line_content_del">����</button>
                </div>
              </div>
              <div class="line">
                <div class="line_bar"></div>
                <div class="line_txt">
                  <p>���൵</p>
                  <p class="green">100%</p>
                </div>
              </div>
            </div>
            <div><img src="./img/img_finished.png" alt="" /></div>
          </div>
          <div class="index_list_wrap">
            <ul class="index_list">
              <li class="idx_item">
                <p>�Ҵ� ����</p>
                <p>���� 100��, �Ź� 50��</p>
              </li>
              <li class="idx_item">
                <p>���� �Ⱓ</p>
                <p>2023.01.01 ~01.06</p>
              </li>
              <li class="idx_item">
                <p>�׷� ���</p>
                <p>��ö��, ��ö��, ��ö��</p>
              </li>
              <li class="idx_item">
                <p>�߿� ����</p>
                <p>�Ҵ� ����</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="line_chart_wrap">
        <div class="line_chart_item">
          <h3>���� ����&������</h3>
          <canvas id="today-chart" class="todayChart" width="400" height="130"></canvas>
        </div>

        <div class="line_chart_item">
          <h3>���꺰 ����</h3>
          <canvas id="amount-chart" class="amountChart" width="400" height="130"></canvas>
        </div>
      </div>
    </div>
  </section>

  <!-- 1������ ���� ��ư ���â ���� ���� -->
  <!-- <div id="modify1" class="modal_modify" style="z-index: 10">
      <div class="madal_header ex1_modal">
        <h3>1�� ���� ����</h3>
        <div class="btn_madal_header">
          <button>���� �߰�</button>
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

  <!-- ���� Ŭ�� ��� -->

  <!-- ���� �߰� ���â ����ver -->
  <div class="orderlist_modal">
    <div class="orderlist_modal_title">
      <h3>1�� ���� ����</h3>
      <div class="modal_btn">
        <button>���� �߰�</button>
        <div class="xbtn"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
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
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">������</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
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
            <div>
              <p>��ö��</p>
            </div>
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
  <div class="background_black"></div>

  <!-- 1������ ���� ���â -->
  <div class="orderlist_modal1">
    <div class="orderlist_modal_title">
      <h3>1�� ���� ����</h3>
      <div class="modal_btn">
        <button>���� �߰�</button>
        <div class="xbtn1"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
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
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">������</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
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
            <div>
              <p>��ö��</p>
            </div>
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
  <div class="background_black1"></div>

  <!-- 2������ ���� ���â -->
  <div class="orderlist_modal2">
    <div class="orderlist_modal_title">
      <h3>2�� ���� ����</h3>
      <div class="modal_btn">
        <button>���� �߰�</button>
        <div class="xbtn2"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
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
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">������</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
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
            <div>
              <p>��ö��</p>
            </div>
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
  <div class="background_black2"></div>

  <!-- 3������ ���� ���â -->
  <div class="orderlist_modal3">
    <div class="orderlist_modal_title">
      <h3>3�� ���� ����</h3>
      <div class="modal_btn">
        <button>���� �߰�</button>
        <div class="xbtn3"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
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
            <div class="work_02">
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
              <div class="orderlist_member_del">
                <p>��ö��</p>
                <button onclick="removeParagraph(this)">X</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mk_item_02">
        <div class="idx_mk_item">
          <div class="idx_mk_title border">������</div>
          <div class="idx_mk_detail">
            <div class="border">
              <p>AppleT</p>
            </div>
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
            <div>
              <p>��ö��</p>
            </div>
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
  <div class="background_black3"></div>
</body>

</html>