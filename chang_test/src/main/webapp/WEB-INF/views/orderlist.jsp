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
  <script>
    function confirmLogout() {
      if (confirm("�α׾ƿ��Ͻðڽ��ϱ�?")) {
        window.location.href = "logout.html";
      }
    }
  </script>
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
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()"/></div>
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
          <p>�ֹ����</p>
          <p>��� ���� > �ֹ� ���</p>
        </h2>
        <div class="orderlist_btn_wrap">
          <button class="btn btn_check">��ȸ</button>
          <button class="btn btn_new">�ű�</button>
          <button class="btn btn_modify">����</button>
          <button class="btn copy">����</button>
          <button class="btn delete">����</button>
        </div>
      </div>
      <!-- ��� ī�װ� ǥ -->

      <div class="orderlist_list_wrap">
        <div class="orderlist_first_line">
          <div class="orderlist_item item_com">
            <div class="order_item_com order_title border">ȸ��</div>
            <div class="order_item_index order_index border">
              <input type="text" />
              <select name="" id="">
                <option value="">����</option>
                <option value="">����</option>
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
              �ֹ��������
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
              ��������
            </div>
            <div class="order_item_end_index order_index border">
              <label>
                <input type="radio" name="contact" value="mail" />
                <span>��������</span>
              </label>
              <label>
                <input type="radio" name="contact" value="mail" />
                <span>��ü����</span>
              </label>
            </div>
          </div>
          <div class="orderlist_item item_used">
            <div class="order_item_used_title order_title border">
              �������
            </div>
            <div class="order_item_used_index order_index border">
              <select name="" id="">
                <option value="">����</option>
                <option value="">����</option>
              </select>
            </div>
          </div>
        </div>
        <div class="orderlist_second_line">
          <div class="orderlist_item">
            <div class="order_title order_item_account_title border">
              �ŷ�ó
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
            <div class="order_title order_item_stuff_title border">ǰ��</div>
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
              �����
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
              �ֹ���ǰ��
            </div>
            <div class="order_index order_index_stufflist border">
              <input type="text" />
            </div>
          </div>
        </div>
      </div>

      <!--��� ���̺� -->
      <div class="orderpage_list">
        <div class="orderpage_list_title">
          <img src="./img/ico_bar.png" alt="" />
          <p>���</p>
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
              <th class="order_table_factory">����</th>
              <th class="order_table_company">ȸ��</th>
              <th class="order_table_statement">��ǥ��ȣ</th>
              <th class="order_table_ver">����</th>
              <th class="order_table_condition">����</th>
              <th class="order_table_customer">�ŷ�ó</th>
              <th class="order_table_registerDate">�����</th>
              <th class="order_table_type">�ŷ�����</th>
              <th class="order_table_charge">�����</th>
              <th class="order_table_total">�ѱݾ�</th>
              <th class="order_table_creationDate">������</th>
              <th class="order_table_creator">������</th>
              <th class="order_table_correctionDate">������</th>
              <th class="order_table_amender">������</th>
            </thead>

            <tbody>
              <!-- ù��° �� -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td>1</td>
                <td></td>
                <td>����</td>
                <td>���ǿ�ũ��������</td>
                <td>0D20180108001</td>
                <td><img src="./img/ico_blue.png" alt="" /></td>
                <td>����</td>
                <td>������</td>
                <td>2023-11-23</td>
                <td>�ΰ�������</td>
                <td>�ý��۰�����</td>
                <td id="table_amount1">1,570,800</td>
                <td>2023-11-23 17:38:57</td>
                <td>������</td>
                <td>2023-11-23��</td>
                <td>������</td>
              </tr>

              <!--�ι�° �� -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td>2</td>
                <td></td>
                <td>����</td>
                <td>���ǿ�ũ��������</td>
                <td>0D20180108001</td>
                <td><img src="./img/ico_green.png" alt="" /></td>
                <td>����</td>
                <td></td>
                <td>2023-11-23</td>
                <td>�ΰ�������</td>
                <td>DEMO</td>
                <td id="table_amount2">55,000</td>
                <td>2023-11-23 17:38:57</td>
                <td>DEMO</td>
                <td>2023-11-23��</td>
                <td>DEMO</td>
              </tr>

              <!--����° �� -->
              <tr class="table_list">
                <td><input type="checkbox" name="" id="" /></td>
                <td>3</td>
                <td></td>
                <td>����</td>
                <td>���ǿ�ũ��������</td>
                <td>0D20180108001</td>
                <td><img src="./img/ico_green.png" alt="" /></td>
                <td>��ϿϷ�</td>
                <td></td>
                <td>2023-11-23</td>
                <td>�ΰ�������</td>
                <td>DEMO</td>
                <td id="table_amount3">101,200</td>
                <td>2023-11-23 17:38:57</td>
                <td>DEMO</td>
                <td>2023-11-23��</td>
                <td>DEMO</td>
              </tr>

              <!--�׹�° �� -->
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

              <!--�ټ���° �� -->
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

              <!--������° �� -->
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

              <!--�ϰ���° �� -->
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
                <td colspan="4">�հ�</td>
                <td colspan="5">�հ�</td>
                <td id="table_aggregate"></td>
                <td colspan="4"></td>
              </tr>
              <tr>
                <td colspan="17" class="content_total">�հ�: 3</td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>

      <!--�� ���̺� -->
      <div class="orderpage_detail">
        <div class="orderpage_detail_title">
          <img src="./img/ico_bar.png" alt="" />
          <p>��</p>
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
                <th colspan="4">ǰ������</th>
                <th rowspan="2">������</th>
                <th rowspan="2">���Ͽ�����</th>
                <th colspan="5">�ݾ�����</th>
                <th rowspan="2">����</th>
                <th rowspan="2"></th>
              </tr>
              <tr class="orderpage_detail_tr_bt">
                <th>ǰ���ڵ�</th>
                <th>ǰ���</th>
                <th>�԰�</th>
                <th>����</th>
                <th>����</th>
                <th>�ܰ�</th>
                <th>���ް���</th>
                <th>�ΰ���</th>
                <th>�ѱݾ�</th>
              </tr>
            </thead>

            <tbody>
              <!-- ù��° �� -->
              <tr class="table_detail">
                <td><input type="checkbox" name="" id="" /></td>
                <td></td>
                <td>20171119100��</td>
                <td>���Ϲٱ���(��)</td>
                <td>�ٱ���(��)</td>
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

              <!--�ι�° �� -->
              <tr class="table_detail">
                <td><input type="checkbox" name="" id="" /></td>
                <td></td>
                <td>20171119100��</td>
                <td>��ȭ���� �ա�</td>
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

              <!--����° �� -->
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
                <td colspan="6">�հ�</td>
                <td id="totalQuantity"></td>
                <td id="totalUnitPrice"></td>
                <td id="totalValueOfSupply"></td>
                <td id="totalSurtax"></td>
                <td id="totalExtendedPrice"></td>
                <td colspan="2"></td>
              </tr>
              <tr class="content_total">
                <td colspan="15" class="content_total">�հ�: 2</td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>
  </section>

  <div class="orderlist_modal">
    <div class="orderlist_modal_title">
      <h3>�ֹ� �߰�</h3>
      <div class="modal_btn">
        <button>�ۼ��Ϸ�</button>
        <button>�ӽ�����</button>
        <div class="xbtn"><img src="./img/ico_modal_xbtn.png" alt="" /></div>
      </div>
    </div>
    <div class="">
      <div class="cate_wrap_01">
        <div class="modal_cate">
          <p class="modal_title">ȸ��</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">ȸ���</option>
            </select>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">�����</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">����</option>
            </select>
          </div>
        </div>
      </div>
      <div class="cate_wrap_01">
        <div class="modal_cate">
          <p class="modal_title">������ȣ</p>
          <div class="modal_index"><input type="text" /></div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">�����</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">����</option>
            </select>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">�ֹ�������</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">����</option>
            </select>
          </div>
        </div>
      </div>
      <div class="cate_wrap_01">
        <div class="modal_cate">
          <p class="modal_title">�����</p>
          <div class="modal_index">
            <input type="text" />
            <button class="btn_search_add on">
              <img src="./img/ico-search_gray.png" alt="" />
            </button>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">����ڿ���ó</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">������̸���</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
            <span>@</span>
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
      </div>
      <div class="cate_wrap_02">
        <div class="modal_cate">
          <p class="modal_title">�����</p>
          <div class="modal_index">
            <input type="text" />
            <div><img src="./img/ico-search_gray.png" alt="" /></div>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">�ŷ�ó �����</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">�ŷ�ó�̸���</p>
          <div class="modal_index">
            <input type="text" placeholder="01012345678" />
            <span>@</span>
            <input type="text" placeholder="01012345678" />
          </div>
        </div>
      </div>
      <div class="cate_wrap_03">
        <div class="modal_cate">
          <p class="modal_title">�ŷ� ����</p>
          <div class="modal_index">
            <select name="" id="">
              <option value="">����</option>
            </select>
          </div>
        </div>
        <div class="modal_cate">
          <p class="modal_title">���</p>
          <div class="modal_index">
            <input type="text" placeholder="��½� ǥ��" />
          </div>
        </div>
      </div>
      <div class="modal_detail_chart">
        <div class="modal_detail_title">
          <div><img src="./img/ico_bar.png" alt="" /></div>
          <p>��</p>
        </div>
        <div class="chart_button">
          <button>������ �ҷ�����</button>
          <button>�������� �ҷ�����</button>
          <button>ǰ������ �ҷ�����</button>
          <button>�����Ȳ �ҷ�����</button>
          <button>�߰�</button>
          <button>����</button>
        </div>
      </div>
      <div>
        <div class="detail_chart">
          <div class="ch_cate">
            <div class="ch_blank_02 border"></div>
            <div class="ch_info_wrap border">
              <div class="ch_infomation">ǰ������</div>
              <div class="ch_info">
                <div class="border">ǰ���</div>
                <div class="border">�԰�</div>
                <div class="border">����</div>
              </div>
            </div>
            <div class="ch_date border">������</div>
            <div class="ch_go border">���Ͽ�����</div>
            <div class="ch_money_wrap">
              <div class="ch_money border">�ݾ�����</div>
              <div class="ch_coin border">
                <div class="ch_quantity border">����</div>
                <div class="ch_price border">�ܰ�</div>
                <div class="ch_value border">���ް���</div>
                <div class="ch_vat border">�ΰ���</div>
                <div class="ch_total_price border">�ѱݾ�</div>
              </div>
            </div>
            <div class="ch_reference border">����</div>
          </div>
          <div class="ch_index">
            <div class="ch_blank_03"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="background_black"></div>

  <!-- �ŷ�ó ������ Ŭ���� ���â ���� -->
  <div class="customer_modal">
    <div class="customer_modal_title">
      <h3>�ŷ�ó ã��</h3>
    </div>
    <div class="customer_info">
      <div class="customer_search">
        <input type="text" placeholder="�ŷ�ó �˻�" />
        <button class="customer_search_btn">
          <img src="./img/ico-search-black.png" alt="" />
        </button>
      </div>
      <div class="customer_content">
        <p class="customer_search_name"></p>
      </div>
    </div>
    <div class="customer_btn">
      <button class="xbtn">���</button>
      <button class="xbtn customer_select">����</button>
    </div>
  </div>

  <!-- ǰ�� ������ Ŭ���� ���â ���� -->
  <div class="item_modal">
    <div class="item_modal_title">
      <h3>ǰ�� ã��</h3>
    </div>
    <div class="item_info">
      <div class="item_search">
        <input type="text" placeholder="ǰ�� �˻�" />
        <button class="item_search_btn">
          <img src="./img/ico-search-black.png" alt="" />
        </button>
      </div>
      <div class="item_content">
        <p class="item_search_name"></p>
      </div>
    </div>
    <div class="item_btn">
      <button class="xbtn">���</button>
      <button class="xbtn item_select">����</button>
    </div>
  </div>

  <!-- ����� ������ Ŭ���� ���â ���� -->
  <div class="personInCharge_modal">
    <div class="personInCharge_modal_title">
      <h3>����� ã��</h3>
    </div>
    <div class="personInCharge_info">
      <div class="personInCharge_search">
        <input type="text" placeholder="����� �˻�" />
        <button class="personInCharge_search_btn">
          <img src="./img/ico-search-black.png" alt="" />
        </button>
      </div>
      <div class="personInCharge_content">
        <p class="personInCharge_search_name"></p>
      </div>
    </div>
    <div class="personInCharge_btn">
      <button class="xbtn">���</button>
      <button class="xbtn personInCharge_select">����</button>
    </div>
  </div>
  <div class="background_black"></div>
</body>

</html>