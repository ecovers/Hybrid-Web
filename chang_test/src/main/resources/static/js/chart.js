// 메인 => 최근 생산량
document.addEventListener("DOMContentLoaded", function () {
  var outputChart = document.getElementById("output-chart").getContext("2d");

  // Create a linear gradient
  var gradient1 = outputChart.createLinearGradient(0, 0, 0, 400);
  var gradient2 = outputChart.createLinearGradient(0, 0, 0, 400);
  var gradient3 = outputChart.createLinearGradient(0, 0, 0, 400);

  // gradient1 => 보라색
  gradient1.addColorStop(0, "rgb(163, 160, 252)");
  gradient1.addColorStop(1, "rgb(126, 122, 255)");

  // gradient2 => 파란색
  gradient2.addColorStop(0, "rgb(150, 231, 255)");
  gradient2.addColorStop(1, "rgb(32, 205, 255)");

  // gradient3 => 초록색
  gradient3.addColorStop(0, "rgb(95, 227, 161)");
  gradient3.addColorStop(1, "rgb(65, 202, 133)");

  // Update the Chart.js code with the gradient
  var myoutputChart = new Chart(outputChart, {
    type: "bar",
    data: {
      labels: ["07", "08", "09", "10", "11", "12"],
      datasets: [
        {
          label: "최근 생산량",
          data: [20, 30, 10, 20, 30, 10],
          fill: true,
          backgroundColor: [
            "rgb(237, 244, 255)",
            gradient1, // Use the gradient here
            "rgb(237, 244, 255)",
            gradient2,
            "rgb(237, 244, 255)",
            "rgb(237, 244, 255)",
          ],
          borderWidth: 1,
          borderSkipped: false,
          datalabels: {
            display: false,
          },
        },
      ],
    },
    options: {
      scales: {
        y: {
          display: true, // y축 라벨 표시
          ticks: {
            display: false, // y축 라벨 숨기기
            stepSize: 8, // y축 간격 설정
          },
        },
        x: {
          display: true, // x축 라벨 숨기기
          grid: {
            display: false, // x 축 그리드 라인 숨기기
          },
        },
      },
      plugins: {
        legend: {
          display: false,
        },
      },
      elements: {
        bar: {
          borderRadius: {
            topLeft: 5, // 상단 좌측 둥글기
            topRight: 5, // 상단 우측 둥글기
            bottomLeft: 0, // 하단 좌측 각지기
            bottomRight: 0, // 하단 우측 각지기
          },
        },
      },
    },
  });
});

// 메인 => 최근 주문량
document.addEventListener("DOMContentLoaded", function () {
  var orderChart = document.getElementById("order-chart").getContext("2d");
  // Update the Chart.js code with the gradient
  var myorderChart = new Chart(orderChart, {
    type: "line",
    data: {
      labels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
      datasets: [
        {
          data: [7, 5, 5, 2, 2, 1, -1, 2, 3, 6, 7],
          fill: true,
          borderColor: "rgba(0, 0, 0, 0)",
          backgroundColor: "rgb(255, 131, 115)",
          pointBackgroundColor: "rgba(255, 255, 255, 0)",
          lineTension: 0.4,
        },
        {
          data: [-1, -1, 0, 1, 3, 3, 4, 6, 6, 3, 0],
          fill: true,
          borderColor: "rgba(0, 0, 0, 0)",
          backgroundColor: "rgba(255, 131, 115, 0.7)",
          pointBackgroundColor: "rgba(255, 255, 255, 0)",
          lineTension: 0.4,
        },
      ],
    },
    options: {
      scales: {
        x: {
          display: false, // x축 제목 숨김
          type: "linear",
          position: "bottom",
        },
        y: {
          display: false, // y축 제목 숨김
          min: 0,
        },
      },
      plugins: {
        legend: {
          display: false,
        },
      },
    },
  });
});

// 메인 => 생산 라인별 비교
document.addEventListener("DOMContentLoaded", function () {
  var data1 = [28, 40, 75, 70, 93, 83, 81]; // Added two more data points: 60 and 80
  var data2 = [65, 65, 32, 25, 55, 75, 75]; // Added two more data points: 65 and 75
  var data3 = [20, 20, 15, 53, 46, 71, 53]; // Added two more data points: 55 and 65
  var data4 = [7, 7, 25, 44, 25, 25, 18]; // Added two more data points: 45 and 55

  // 라벨 배열
  var labels = [
    "Label 1",
    "Label 2",
    "Label 3",
    "Label 4",
    "Label 5",
    "Label 6",
    "Label 7",
  ];

  // 차트 생성
  var productChart = document.getElementById("produce-chart").getContext("2d");
  var myproductChart = new Chart(productChart, {
    type: "line",
    data: {
      labels: labels,
      datasets: [
        {
          data: data1,
          borderColor: "rgb(255, 101, 81)",
          pointBackgroundColor: "rgb(255, 101, 81)",
          borderWidth: 2,
          fill: false,
        },
        {
          data: data2,
          borderColor: "rgb(255, 199, 68)",
          pointBackgroundColor: "rgb(255, 199, 68)",
          borderWidth: 2,
          fill: false,
        },
        {
          data: data3,
          borderColor: "rgb(19, 202, 255)",
          pointBackgroundColor: "rgb(19, 202, 255)",
          borderWidth: 2,
          fill: false,
        },
        {
          data: data4,
          borderColor: "rgb(127, 121, 249)",
          pointBackgroundColor: "rgb(127, 121, 249)",
          borderWidth: 2,
          fill: false,
        },
      ],
    },
    options: {
      scales: {
        x: {
          type: "category",
          display: false,
        },
        y: {
          type: "linear",
          position: "left",
          min: 0,
          max: 100,
          ticks: {
            stepSize: 25,
            callback: function (value) {
              return value; // Remove "%" from the tick labels
            },
          },
        },
      },
      plugins: {
        legend: {
          display: false,
        },
      },
    },
  });
});

// 메인 => 최근 판매량
document.addEventListener("DOMContentLoaded", function () {
  var sellChart = document.getElementById("sell-chart").getContext("2d");
  // Update the Chart.js code with the gradient
  var mysellChart = new Chart(sellChart, {
    type: "line",
    data: {
      labels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
      datasets: [
        {
          data: [2, 2, 3, 2, 4, 5, 4, 3, 2, 4, 5],
          fill: true,
          borderColor: "rgba(0, 0, 0, 0)",
          backgroundColor: "rgba(255, 218, 131, 0.7)",
          pointBackgroundColor: "rgba(255, 255, 255, 0)",
          lineTension: 0.4,
        },
        {
          data: [3, 2, 2, 4, 3, 3, 4, 5, 4, 3, 0],
          fill: true,
          borderColor: "rgba(0, 0, 0, 0)",
          backgroundColor: "rgba(255, 218, 131, 0.7)",
          pointBackgroundColor: "rgba(255, 255, 255, 0)",
          lineTension: 0.4,
        },
      ],
    },
    options: {
      scales: {
        x: {
          display: false, // x축 제목 숨김
          type: "linear",
          position: "bottom",
        },
        y: {
          display: false, // y축 제목 숨김
          min: 0,
        },
      },
      plugins: {
        legend: {
          display: false,
        },
      },
    },
  });
});

// 메인 => 목표 판매량
document.addEventListener("DOMContentLoaded", function () {
  var targetChart = document.getElementById("target-chart").getContext("2d");
  var gradient4 = targetChart.createLinearGradient(0, 0, 0, 400);
  var gradient5 = targetChart.createLinearGradient(0, 0, 0, 400);

  // gradient4 => 보라색
  gradient4.addColorStop(0, "rgb(163, 160, 252)");
  gradient4.addColorStop(1, "rgb(126, 122, 255)");

  // gradient5 => 초록색
  gradient5.addColorStop(0, "rgb(95, 227, 161)");
  gradient5.addColorStop(1, "rgb(65, 202, 133)");

  // Update the Chart.js code with the gradient
  var mytargetChart = new Chart(targetChart, {
    type: "bar",
    data: {
      labels: [
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
        "10",
        "11",
        "12",
      ],
      datasets: [
        {
          label: "최근 생산량",
          data: [11, 14, 10, 30, 14, 24, 30, 15, 24, 30, 15],
          fill: true,
          backgroundColor: [
            "rgb(237, 244, 255)",
            gradient5,
            "rgb(237, 244, 255)",
            gradient4,
            "rgb(237, 244, 255)",
            "rgb(237, 244, 255)",
            gradient4,
            "rgb(237, 244, 255)",
            "rgb(237, 244, 255)",
            gradient5,
            "rgb(237, 244, 255)",
          ],
          borderWidth: 1,
          borderSkipped: false,
          datalabels: {
            display: false,
          },
        },
      ],
    },
    options: {
      scales: {
        y: {
          display: true, // y축 라벨 표시
          ticks: {
            display: false, // y축 라벨 숨기기
            stepSize: 8, // y축 간격 설정
          },
        },
        x: {
          display: true, // x축 라벨 숨기기
          grid: {
            display: false, // x 축 그리드 라인 숨기기
          },
        },
      },
      plugins: {
        legend: {
          display: false,
        },
      },
      elements: {
        bar: {
          borderRadius: {
            topLeft: 5, // 상단 좌측 둥글기
            topRight: 5, // 상단 우측 둥글기
            bottomLeft: 0, // 하단 좌측 각지기
            bottomRight: 0, // 하단 우측 각지기
          },
        },
      },
    },
  });
});

// makeline => 금일 생산&물량수

document.addEventListener("DOMContentLoaded", function () {
  var todayChart = document.getElementById("today-chart").getContext("2d");

  var gradient4 = todayChart.createLinearGradient(0, 0, 0, 400);
  var gradient5 = todayChart.createLinearGradient(0, 0, 0, 400);

  // gradient4
  gradient4.addColorStop(0, "rgb(127, 121, 249)");
  gradient4.addColorStop(1, "rgb(163, 160, 251)");

  // gradient5
  gradient5.addColorStop(0, "rgb(149, 184, 234)");
  gradient5.addColorStop(1, "rgb(81, 120, 255)");

  // Update the Chart.js code with the gradient
  var mytodayChart = new Chart(todayChart, {
    type: "bar",
    data: {
      labels: [
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
        "10",
        "11",
        "12",
      ],
      datasets: [
        {
          label: "최근 생산량",
          data: [11, 14, 10, 30, 14, 24, 30, 15, 24, 30, 15],
          fill: true,
          backgroundColor: [
            gradient4,
            gradient5,
            "rgb(237, 244, 255)",
            gradient5,
            gradient4,
            "rgb(237, 244, 255)",
            gradient5,
            "rgb(237, 244, 255)",
            gradient4,
            gradient5,
            "rgb(237, 244, 255)",
          ],
          borderWidth: 1,
          borderSkipped: false,
          datalabels: {
            display: false,
          },
        },
      ],
    },
    options: {
      scales: {
        y: {
          display: true, // y축 라벨 표시
          ticks: {
            display: false, // y축 라벨 숨기기
            stepSize: 8, // y축 간격 설정
          },
        },
        x: {
          display: true, // x축 라벨 숨기기
          grid: {
            display: false, // x 축 그리드 라인 숨기기
          },
        },
      },
      plugins: {
        legend: {
          display: false,
        },
      },
      elements: {
        bar: {
          borderRadius: {
            topLeft: 5, // 상단 좌측 둥글기
            topRight: 5, // 상단 우측 둥글기
            bottomLeft: 0, // 하단 좌측 각지기
            bottomRight: 0, // 하단 우측 각지기
          },
        },
      },
    },
  });
});

// makeline => 생산별 수량
document.addEventListener("DOMContentLoaded", function () {
  var amountChart = document.getElementById("amount-chart").getContext("2d");

  var gradient6 = amountChart.createLinearGradient(0, 0, 0, 400);
  var gradient7 = amountChart.createLinearGradient(0, 0, 0, 400);
  var gradient8 = amountChart.createLinearGradient(0, 0, 0, 400);

  // gradient6
  gradient6.addColorStop(0, "rgb(255, 199, 68)");
  gradient6.addColorStop(1, "rgb(255, 218, 131)");

  // gradient7
  gradient7.addColorStop(0, "rgb(95, 227, 161)");
  gradient7.addColorStop(1, "rgb(65, 202, 133)");

  // gradient8
  gradient8.addColorStop(0, "rgb(255, 52, 52)");
  gradient8.addColorStop(1, "rgb(255, 131, 115)");

  // Update the Chart.js code with the gradient
  var myamountChart = new Chart(amountChart, {
    type: "bar",
    data: {
      labels: [
        "02",
        "03",
        "04",
        "05",
        "06",
        "07",
        "08",
        "09",
        "10",
        "11",
        "12",
      ],
      datasets: [
        {
          label: "최근 생산량",
          data: [11, 14, 10, 30, 14, 24, 30, 15, 24, 30, 15],
          fill: true,
          backgroundColor: [
            "rgb(241, 241, 241)",
            gradient6,
            "rgb(241, 241, 241)",
            gradient6,
            gradient7,
            "rgb(241, 241, 241)",
            gradient8,
            gradient7,
            "rgb(241, 241, 241)",
            gradient8,
            gradient7,
          ],
          borderWidth: 1,
          borderSkipped: false,
          datalabels: {
            display: false,
          },
        },
      ],
    },
    options: {
      scales: {
        y: {
          display: true, // y축 라벨 표시
          ticks: {
            display: false, // y축 라벨 숨기기
            stepSize: 8, // y축 간격 설정
          },
        },
        x: {
          display: true, // x축 라벨 숨기기
          grid: {
            display: false, // x 축 그리드 라인 숨기기
          },
        },
      },
      plugins: {
        legend: {
          display: false,
        },
      },
      elements: {
        bar: {
          borderRadius: {
            topLeft: 5, // 상단 좌측 둥글기
            topRight: 5, // 상단 우측 둥글기
            bottomLeft: 0, // 하단 좌측 각지기
            bottomRight: 0, // 하단 우측 각지기
          },
        },
      },
    },
  });
});
