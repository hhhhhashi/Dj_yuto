// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import "chartkick/chart.js"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { Chart, TimeScale } from 'chart.js';
import 'chartjs-adapter-date-fns';  // 追加
import 'chartjs-adapter-moment';

// Turbolinks あるいは Turbo のロード後にグラフを再描画
document.addEventListener('turbolinks:load', () => {
  if (typeof Chart !== 'undefined') {
    // Chart.jsの初期化や再描画処理をここに記述
    console.log("Turbolinks loaded, chart will be rendered");
  }
});

// または Turbo を使用する場合
document.addEventListener('turbo:load', () => {
  if (typeof Chart !== 'undefined') {
    // Chart.jsの初期化や再描画処理
    console.log("Turbo loaded, chart will be rendered");
  }
});


document.addEventListener('DOMContentLoaded', function() {
  initializeChart();
});

document.addEventListener('turbolinks:load', function() {
  initializeChart();
});

document.addEventListener('turbo:load', function() {
  initializeChart();
});

function initializeChart() {
  // グラフを描画するコード
  const ctx = document.getElementById('myChart').getContext('2d');
  const myChart = new Chart(ctx, {
    type: 'line',
    data: data,
    options: {
      scales: {
        x: {
          type: 'time',
          time: {
            unit: 'day'
          }
        }
      }
    }
  });
}

// 他の設定やチャートの初期化
const myChart = new Chart(ctx, {
  type: 'line',
  data: data,
  options: {
    scales: {
      x: {
        type: 'time',
        time: {
          unit: 'day'
        }
      }
    }
  }
});

Rails.start()
//Turbolinks.start()
ActiveStorage.start()
