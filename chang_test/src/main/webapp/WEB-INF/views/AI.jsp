
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.example.demo.dto.MainDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- �ڹ�ó�� �ش� ������ ������ �ʿ��� �޼ҵ���� import�� �ҷ����� ��� ���� ctrl+space�� ������ �ڵ����� �ҷ�������. -->
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
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	
	<!-- �ڹ� ��ũ��Ʈ �� -->
  <script>
    function confirmLogout() {
      if (confirm("�α׾ƿ��Ͻðڽ��ϱ�?")) {
        window.location.href = "logout.html";
      }
    }
  </script>
  
<script type="text/javascript">

let check_dic = {"����" : "�����"};
/* ��¥ ������ �����ϱ� ���� java  ȣ�� */
<%SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>

/* �ǽð� html ������ ���� Ajax �Լ� */
function callAjax(){		
		$.ajax({
		  type : 'post', /* ����ƮŸ������ */
   		  url : 'http://192.168.50.51:5000/', /* ��ǥ �����ǿ� ��� ���⼱  python:Flask - DB�� ��� */
/*		  url : 'AI.jsp', */
/*    		  url : 'http://221.144.59.244:5000/' */
		  data : check_dic, /* check_dic�� ������ */
		  dataType : 'json', /* json Ÿ������ */
		  success : function(res) { /* ��� ���� ���� �� ���� �Լ� */
				var count = res['count'];
				/* �޾ƿ� ������ html ���� ��� �����Ѵ� - �ǽð� �� ���� */
				<%for (int i = 0; i < 10; i++) {%>
				var Name<%=i + 1%> = count[<%=i%>][1];
				var location<%=i + 1%> = count[<%=i%>][2];
				var size<%=i + 1%> = count[<%=i%>][3];
				var ea<%=i + 1%> = count[<%=i%>][4];
				var date<%=i + 1%> = count[<%=i%>][0];
				/* �� id ���� �������� �� ���� */
				document.getElementById("name<%=i + 1%>").innerHTML = Name<%=i + 1%>;
				document.getElementById("location<%=i + 1%>").innerHTML = location<%=i + 1%>;
				document.getElementById("ea<%=i + 1%>").innerHTML = ea<%=i + 1%>;
				document.getElementById("size<%=i + 1%>").innerHTML = size<%=i + 1%>;
				document.getElementById("time<%=i + 1%>").innerHTML = date<%=i + 1%>;
				<%}%>

				
		},
		error : function() { 

		}
		})
	}
	setInterval(callAjax, 1000) /* �и��� ���� ������(1�� ����) */
	callAjax()
	;
</script>
  
  
  
  
</head>

<body style="overflow-y: hidden">
  <!-- ��� ���� -->
  <header>
    <div class="header_wrap">
      <h1 class="logo">
        <!-- <img src="./img/ecoversLogo.svg" alt="" class="filter-orange size-m"/> -->

      </h1>
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
              <div class="index_txt_btn" onClick="location.href='main.html'"><button>�α׾ƿ�</button></div>
            </div> -->
        </div>
        <!-- ���ڵ�� �޴� -->
        <div class="accordion">
          <ul class="menu">
            <li>
              <a href="main" class="cate">
                <span><img src="./img/ico_home.png" alt="" /></span>
                <span>Home</span>
              </a>
            </li>
            <li>
              <a href="AI" class="cate on">
                <span><img src="./img/ico_ai.png" alt="" /></span>
                <span>�ǽð� AI CCTV</span>
              </a>
              <!-- <div>
                  <p>�Ҹ޴�1</p>
                </div> -->
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_box.png" alt="" /></span>
                <span>�������</span>
              </a>
              <div>
                <p onClick="location.href='makeline'">���� ����</p></a>
                <p onClick="location.href='#'">�۾� ���� �� ��ȸ</p>
                <p onClick="location.href='#'">���� �Ϻ�</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_product.png" alt="" /></span>
                <span>��ǰ����</span>
              </a>
              <div>
                <p onClick="location.href='production.html'">��ǰ ��� ��Ȳ</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_date.png" alt="" /></span>
                <span>��������</span>
              </a>
              <div>
                <p onClick="location.href='date.html'">���� ���/����</p>
              </div>
            </li>
            <li>
              <a href="#" class="cate">
                <span><img src="./img/ico_article.png" alt="" /></span>
                <span>�������</span>
              </a>
              <div>
                <p onClick="location.href='item.html'">���� ���� �� ��ȸ</p>
                <p>���� ����</p>
                <p>���� �԰� ��Ȳ</p>
                <p>���� ��� ��ȸ</p>
              </div>
            </li>
            <li>
              <a href="orderlist.html" class="cate">
                <span><img src="./img/ico_order.png" alt="" /></span>
                <span>�ֹ�����</span>
              </a>
              <div>
                <p onClick="location.href='orderlist.html'">�ֹ� ���</p>
                <p>�ŷ�ó ����</p>
                <p>��� �� ��ȸ</p>
              </div>
            </li>
            <li>
              <a href="member.html" class="cate">
                <span><img src="./img/ico_member.png" alt="" /></span>
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
    <!-- �� ������ ���� �߰�  -->
    <div class="orderlist mg_top mg_left board_pad">
      <div class="title_wrap">
        <h2 class="title">
          <p>�ǽð� AI CCTV</p>
          <!-- <p>��� ���� > �ֹ� ���(�����ؾߵ�)</p> -->
        </h2>
      </div>
      <!-- ī�޶� ���� + ǥ�� ���� �ִ� ����  -->
      <!-- <img src="http://192.168.50.55:5000/video_feed" width="72%" height="72%" style="float: left;">
      <table border="1" style="text-align: center; border-collapse: collapse;float: left">
        <tr>
          <td>Name</td>
          <td>Location</td>
          <td>EA</td>
          <td>TIME</td>
        </tr>
        <tr>
          <td>Flower_Cream_Bottom</td>
          <td>A-3</td>
          <td>1</td>
          <td>2023-01-01 00:00</td>
        </tr>
      </table> -->
      <!-- ī�޶� ���� �ִ� ���  -->
      
      
      <textbox>
      <img src="http://106.252.246.76:5000/video_feed" id="cam" width="70%" height="95%" style="float: left;" > 
      <!-- <video src="img/2_edit.mp4" autoplay muted loop style="width: 70%;float: left;"></video> -->
      
      
  
     
    	  
      
      
      <div style=" height: 590px; font-size: 10pt; border-collapse: collapse; overflow-y: scroll;text-align: center;">
        <table style="width: 100%;">
          <thead>
            <tr style="background-color: #f2f2f2;">
              <th class="border px-4 py-2" width="110" style="border: 1px solid #333; background-color: lightgray; ">
                Name</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">Location</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">EA</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">Size</th>
              <th class="border px-4 py-2" style="border: 1px solid #333; background-color: lightgray;">Product ID</th>
            </tr>
          </thead>
          <tbody>
          
          
          <!-- ��ܿ��� �ø� ������ �ҷ��� main������ ���� --> 
          <%List<MainDTO> main = (List<MainDTO>)session.getAttribute("AI"); %>
           <%for (int i = 0; i < main.size(); i++){ /* ������ ���� html�� ������ ���̸�ŭ �ݺ� */  
     /*       MainDTO asd =   */
           		%>
            <tr>
              <td class="border px-4 py-2" id="name<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_pdt_name() %></td>
              <td class="border px-4 py-2" id="location<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_pdt_size() %></td>
              <td class="border px-4 py-2" id="ea<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_factory_name() %></td>
              <td class="border px-4 py-2" id="size<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_line_num() %></td>
              <td class="border px-4 py-2" id="time<%=i+1 %>" style="border: 1px solid #333; padding: 8px;"><%=main.get(i).getAI_date() %>
              </td>
            </tr>
          <%  }  %> <!-- ���� �ݱ� -->
     	  
            

            </tr>
          </tbody>
        </table>
        
      </div>
      <!-- (��)rtsp �ּ� ���� ��ư �� �Լ� -->
      <input type="text" id="newSrc" placeholder="���ο� src ���� �Է��ϼ���">
      <button onclick="changeSrc()">�����ϱ�</button>
		<script>
		function changeSrc() {
		  // HTML ��Ҹ� �����մϴ�.
		  var camElement = document.getElementById('cam');
		  var newSrcElement = document.getElementById('newSrc');
		
		  // 'src' �Ӽ��� �����մϴ�.
		  camElement.src = newSrcElement.value;
		}
		</script>
    </div>
  </section>

</body>

</html>