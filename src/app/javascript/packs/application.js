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
Turbolinks.start()
ActiveStorage.start()
