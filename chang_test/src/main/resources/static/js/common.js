// ★★★ common.html JS
$(function () {
  $(".menu>li>a").click(function () {
    $(this).next("div").slideToggle(200);
    $(this).parent("li").siblings("li").children("div").slideUp(200);
  });
});

$(function () {
  $(".menu li a").click(function () {
    $(".menu li a").removeClass("on");
    $(this).addClass("on");
  });
});

// 소제목 active될때
$(document).ready(function () {
  $(".menu li div p").click(function () {
    $(".menu li div p").removeClass("active");
    $(this).addClass("active");
  });
});

// 헤더 알람 내용 표시 => 읽은내용 재선택시 안읽음 스타일 변경 가능.
// $(function () {
//   $(".bell").click(function (e) {
//     e.stopPropagation();
//     $(".modal").fadeToggle(); // Use fadeToggle() instead of fadeIn()
//   });

//   $(".modal, .modal_content").click(function (e) {
//     e.stopPropagation();
//   });

//   $(".alarm-modal_contents").click(function (e) {
//     e.preventDefault();
//     e.stopPropagation();
//     $(this).find("*").toggleClass("read");
//   });

//   $(document).click(function () {
//     $(".modal").fadeOut();
//   });
// });

// 헤더 알람 내용 표시 => 읽은내용 안읽음으로 변경 불가.
$(function () {
  $(".bell").click(function (e) {
    e.stopPropagation();
    $(".alarm").fadeToggle(); // Use fadeToggle() instead of fadeIn()
  });

  $(".alarm, .modal_content").click(function (e) {
    e.stopPropagation();
  });

  $(".alarm-modal_contents").click(function (e) {
    e.preventDefault();
    e.stopPropagation();
    $(this).find("*").addClass("read");
  });

  $(document).click(function () {
    $(".alarm").fadeOut();
  });
});

// ★★★ date.html JS
// date 일정 추가 모달
$(function () {
  $(".schedule_btn_add").click(function () {
    $(".schedule_add").toggleClass("on");
    $(".background_black").toggleClass("on");
  });
  $(".background_black").click(function () {
    $(".schedule_add").removeClass("on");
    $(".background_black_add").removeClass("on");
  });
  $(".xbtn").click(function () {
    $(".schedule_add").removeClass("on");
    $(".background_black").removeClass("on");
  });
});

// date 일정 수정 모달
$(function () {
  $(".schedule_btn_modify").click(function () {
    $(".schedule_modify").toggleClass("on");
    $(".background_black").toggleClass("on");
  });
  $(".background_black").click(function () {
    $(".schedule_modify").removeClass("on");
    $(".background_black").removeClass("on");
  });
  $(".xbtn").click(function () {
    $(".schedule_modify").removeClass("on");
    $(".background_black").removeClass("on");
  });
});

// 현재날짜 세팅
// document.getElementById("currentDate").value = new Date()
//   .toISOString()
//   .substring(0, 10);

// date 일정 추가 모달 안에 내용 데이터 수정 모달에 저장
$(document).ready(function () {
  // Click event for the schedule_save button in .schedule_add
  $(".schedule_add .schedule_save").click(function () {
    // Get values from the .schedule_add section
    var title = $(".schedule_add .schedule_title input").val();
    var startDate = $('.schedule_add .schedule_date input[type="date"]')
      .eq(0)
      .val();
    var endDate = $('.schedule_add .schedule_date input[type="date"]')
      .eq(1)
      .val();
    var content = $(".schedule_add .schedule_content input").val();

    // Update the corresponding fields in .schedule_modify
    $(".schedule_modify .schedule_title input").val(title);
    $('.schedule_modify .schedule_date input[type="date"]')
      .eq(0)
      .val(startDate);
    $('.schedule_modify .schedule_date input[type="date"]').eq(1).val(endDate);
    $(".schedule_modify .schedule_content input").val(content);
  });
});

// ★★★ makeline.html JS
// 모달 2 (makeline) - 우측 상단 라인 추가 클릭 모달
$(function () {
  $(".lineplus").click(function () {
    $(".orderlist_modal").toggleClass("on");
    $(".background_black").toggleClass("on");
  });
  $(".background_black").click(function () {
    $(".orderlist_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
  $(".xbtn").click(function () {
    $(".orderlist_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
});

// 모달 2 (makeline) - 1번 라인 수정 클릭 모달
$(function () {
  $(".lineplus1").click(function () {
    $(".orderlist_modal1").toggleClass("on");
    $(".background_black1").toggleClass("on");
  });
  $(".background_black1").click(function () {
    $(".orderlist_modal1").removeClass("on");
    $(".background_black1").removeClass("on");
  });
  $(".xbtn1").click(function () {
    $(".orderlist_modal1").removeClass("on");
    $(".background_black1").removeClass("on");
  });
});

// 모달 2 (makeline) - 2번 라인 수정 클릭 모달
$(function () {
  $(".lineplus2").click(function () {
    $(".orderlist_modal2").toggleClass("on");
    $(".background_black2").toggleClass("on");
  });
  $(".background_black2").click(function () {
    $(".orderlist_modal2").removeClass("on");
    $(".background_black2").removeClass("on");
  });
  $(".xbtn2").click(function () {
    $(".orderlist_modal2").removeClass("on");
    $(".background_black2").removeClass("on");
  });
});

// 모달 2 (makeline) - 3번 라인 수정 클릭 모달
$(function () {
  $(".lineplus3").click(function () {
    $(".orderlist_modal3").toggleClass("on");
    $(".background_black3").toggleClass("on");
  });
  $(".background_black3").click(function () {
    $(".orderlist_modal3").removeClass("on");
    $(".background_black3").removeClass("on");
  });
  $(".xbtn3").click(function () {
    $(".orderlist_modal3").removeClass("on");
    $(".background_black3").removeClass("on");
  });
});

// 생산관리페이지 => 삭제 버튼
$(document).ready(function () {
  $(".line_content_del").click(function () {
    // 삭제하겠습니까? 라는 문구를 띄웁니다.
    var result = confirm("삭제하시겠습니까?");

    // 확인을 누르면 삭제합니다.
    if (result) {
      // 삭제 로직을 실행합니다.
      // (예: DB에서 삭제하는 로직을 실행합니다.)

      // 삭제 후 해당 라인을 DOM에서 제거합니다.
      $(this).closest(".line_item").remove();
    }
  });
});
function removeParagraph(button) {
  // 버튼의 부모 요소를 찾아 해당 요소 삭제
  var parentDiv = button.parentNode;
  parentDiv.parentNode.removeChild(parentDiv);
}

// ★★★ orderlist.html JS
// 모달 1 (orderlist)
$(function () {
  $(".btn_new").click(function () {
    $(".orderlist_modal").toggleClass("on");
    $(".background_black").toggleClass("on");
  });
  $(".background_black").click(function () {
    $(".orderlist_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
  $(".xbtn").click(function () {
    $(".orderlist_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
});

// 주문페이지 => 선택 체크박스 클릭 후 삭제
const deleteButton = document.querySelector(".btn.delete");

deleteButton.addEventListener("click", () => {
  const checkedItemsList = document.querySelectorAll(
    '.table_list input[type="checkbox"]:checked'
  );
  const checkedItemsDetail = document.querySelectorAll(
    '.table_detail input[type="checkbox"]:checked'
  );
  const checkedItems = Array.from(checkedItemsList).concat(
    Array.from(checkedItemsDetail)
  );

  if (checkedItems.length === 0) {
    // 삭제할 항목이 없을 경우 알림 메시지
    alert("삭제할 항목을 선택하세요.");
    return;
  }

  // 신규추가 검색창 모달
  $(function () {
    $(".btn_search_add").click(function () {
      $(".charge_name_list").toggleClass("on");
      $(".background_black").toggleClass("on");
    });
    $(".background_black").click(function () {
      $(".charge_name_list").removeClass("on");
      $(".background_black").removeClass("on");
    });
    $(".xbtn").click(function () {
      $(".charge_name_list").removeClass("on");
      $(".background_black").removeClass("on");
    });
  });

  const confirmMessage = `선택한 ${checkedItems.length}개의 항목을 삭제하시겠습니까?`;
  if (confirm(confirmMessage)) {
    // 선택된 항목 삭제 로직 수행 (예: 서버에 삭제 요청 보내기)
    checkedItems.forEach((item) => {
      // item.parentNode.removeChild(item);
      // 또는
      item.closest(".table_list, .table_detail").remove();
    });
  }
});

// 목록 => 총금액 계산
function updateAggregate() {
  var table_aggregate = 0;
  for (var i = 1; i <= 7; i++) {
    var table_amountValue =
      parseInt(
        document.getElementById("table_amount" + i).innerText.replace(/,/g, "")
      ) || 0;
    table_aggregate += table_amountValue;
  }
  document.getElementById("table_aggregate").innerText =
    table_aggregate.toLocaleString();
}

updateAggregate();

// 상세 => 수량 계산
function updateTotalQuantity() {
  var totalQuantity = 0;
  for (var i = 1; i <= 4; i++) {
    totalQuantity +=
      parseInt(document.getElementById("quantity" + i).innerText) || 0;
  }
  document.getElementById("totalQuantity").innerText =
    totalQuantity.toLocaleString();
}

updateTotalQuantity();

// 상세 => 단가 계산
function updateTotalUnitPrice() {
  var totalUnitPrice = 0;
  for (var i = 1; i <= 4; i++) {
    var unitPriceValue =
      parseInt(
        document.getElementById("unitPrice" + i).innerText.replace(/,/g, "")
      ) || 0;
    totalUnitPrice += unitPriceValue;
  }
  document.getElementById("totalUnitPrice").innerText =
    totalUnitPrice.toLocaleString();
}

updateTotalUnitPrice();

// 상세 => 공급가액 계산
function updateTotalValueOfSupply() {
  var totalValueOfSupply = 0;
  for (var i = 1; i <= 4; i++) {
    var valueOfSupplyValue =
      parseInt(
        document.getElementById("valueOfSupply" + i).innerText.replace(/,/g, "")
      ) || 0;
    totalValueOfSupply += valueOfSupplyValue;
  }
  document.getElementById("totalValueOfSupply").innerText =
    totalValueOfSupply.toLocaleString();
}

updateTotalValueOfSupply();

// 상세 => 부가세 계산
function updateTotalSurtax() {
  var totalSurtax = 0;
  for (var i = 1; i <= 4; i++) {
    var surtaxValue =
      parseInt(
        document.getElementById("surtax" + i).innerText.replace(/,/g, "")
      ) || 0;
    totalSurtax += surtaxValue;
  }
  document.getElementById("totalSurtax").innerText =
    totalSurtax.toLocaleString();
}

updateTotalSurtax();

// 상세 => 총금액 계산
function updateTotalExtendedPrice() {
  var totalExtendedPrice = 0;
  for (var i = 1; i <= 4; i++) {
    var extendedPriceValue =
      parseInt(
        document.getElementById("extendedPrice" + i).innerText.replace(/,/g, "")
      ) || 0;
    totalExtendedPrice += extendedPriceValue;
  }
  document.getElementById("totalExtendedPrice").innerText =
    totalExtendedPrice.toLocaleString();
}

updateTotalExtendedPrice();

// 돋보기 클릭시 모달창 on => 거래처
$(function () {
  $(".btn_search_customer").click(function () {
    $(".customer_modal").toggleClass("on");
    $(".background_black").toggleClass("on");
  });
  $(".background_black").click(function () {
    $(".customer_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
  $(".xbtn").click(function () {
    $(".customer_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
});
// 거래처명 검색
$(document).ready(function () {
  $(".customer_search_btn").on("click", function () {
    var searchValue = $(".customer_search input").val();

    var customerName = searchCustomer(searchValue);

    $(".customer_search_name").text(customerName);
  });

  $(".xbtn").on("click", function () {
    $(".customer_search_name").text("");

    $(".customer_search input").val("");
  });

  function searchCustomer(value) {
    return value;
  }
});

// 돋보기 클릭시 모달창 on => 품목
$(function () {
  $(".btn_search_item").click(function () {
    $(".item_modal").toggleClass("on");
    $(".background_black").toggleClass("on");
  });
  $(".background_black").click(function () {
    $(".item_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
  $(".xbtn").click(function () {
    $(".item_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
});
// 품목명 검색
$(document).ready(function () {
  $(".item_search_btn").on("click", function () {
    var searchValue = $(".item_search input").val();

    var customerName = searchCustomer(searchValue);

    $(".item_search_name").text(customerName);
  });

  $(".xbtn").on("click", function () {
    $(".item_search_name").text("");

    $(".item_search input").val("");
  });

  function searchCustomer(value) {
    return value;
  }
});

// 돋보기 클릭시 모달창 on => 담당자
$(function () {
  $(".btn_search_personInCharge").click(function () {
    $(".personInCharge_modal").toggleClass("on");
    $(".background_black").toggleClass("on");
  });
  $(".background_black").click(function () {
    $(".personInCharge_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
  $(".xbtn").click(function () {
    $(".personInCharge_modal").removeClass("on");
    $(".background_black").removeClass("on");
  });
});
// 담당자명 검색
$(document).ready(function () {
  $(".personInCharge_search_btn").on("click", function () {
    var searchValue = $(".personInCharge_search input").val();

    var customerName = searchCustomer(searchValue);

    $(".personInCharge_search_name").text(customerName);
  });

  $(".xbtn").on("click", function () {
    $(".personInCharge_search_name").text("");

    $(".personInCharge_search input").val("");
  });

  function searchCustomer(value) {
    return value;
  }
});


