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
  <!-- ��� ���� -->
  <header>
    <div class="header_wrap">
      <h1 class="logo"><img src="" alt="" /></h1>
      <p> ECOVERS ���� ����͸� �ý���</p>
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
          <!-- �̹����� "image" Ŭ������ �߰��մϴ�. -->
          <div><img src="./img/ico_people.png" alt="" onclick="confirmLogout()" /></div>
          <div><img src="./img/ico_arrow_people.png" alt="" class="" /></div>
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
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>���� ����</p>
          <p>���� ���� > �۾� ���� �� ��ȸ</p>
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
  </section>
</body>

</html>