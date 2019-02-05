// JavaScript for static_pages/calc

// BMI
function calc_bmi1() {

  var weight = Number(document.form_bmi1.input_weight.value);
  var height = Number(document.form_bmi1.input_height.value);

  var bmi = Math.round(weight * 10000 / height / height * 10) / 10;
  var fine_weight = Math.round(height * height * 22 / 1000) / 10;

  var bmi_text;
  var category = "";

  if (isNaN(bmi)) {
    bmi_text = "入力値が無効です";
    fine_weight = "";
  } else {
    bmi_text = "ＢＭＩ: " + bmi.toFixed(1) + " (kg/m2)";


    if (bmi < 18.5) {
      category = "肥満判定：低体重";
    } else if (bmi < 25.0) {
      category = "肥満判定：普通体重";
    } else if (bmi < 30.0) {
      category = "肥満判定：肥満1度";
    } else if (bmi < 35.0) {
      category = "肥満判定：肥満2度";
    } else if (bmi < 40.0) {
      category = "肥満判定：肥満3度";
    } else {
      category = "肥満判定：肥満4度";
    }

    fine_weight =　"標準体重：" + fine_weight + " (kg)";

  }
  document.getElementById('result_bmi_input1').innerHTML = "身長: " + height + "cm 体重: " + weight + "kg のあなたのBMIは";
  document.getElementById('result_bmi1').innerHTML = bmi_text;
  document.getElementById('result_bmi_category1').innerHTML = category;
  document.getElementById('result_bmi_fine1').innerHTML = fine_weight;
  document.getElementById("bmi_result_area1").style.visibility = "visible";

  $("html,body").animate({
  scrollTop: $('#bmi_result_area1').offset().top
  });
}

// Weight
function calc_bmi2() {

  var height = Number(document.form_bmi2.input_height.value);
  var bmi = Number(document.form_bmi2.input_bmi.value);

  var height2 = height / 100;
  var weight = (bmi * (height2 * height2)).toFixed(1);

  document.getElementById('result_bmi_input2').innerHTML = "身長: " + height + "cm BMI: " + bmi + " の推定体重は";
  document.getElementById('result_bmi2').innerHTML = weight + "kg です。";
  document.getElementById("bmi_result_area2").style.visibility = "visible";

  $("html,body").animate({
    scrollTop: $('#bmi_result_area2').offset().top
  });
}

// Height
function calc_bmi3() {

  var weight = Number(document.form_bmi3.input_weight.value);
  var bmi = Number(document.form_bmi3.input_bmi.value);

  var height = weight / bmi;
  height = Math.sqrt(height);
  height = (height * 100).toFixed(1);

  var height_text;

  if (bmi <= 0) {
    height_text = "入力値が無効です";
  } else {
    height_text = height + "cm です。";

  }
  document.getElementById('result_bmi_input3').innerHTML = "体重: " + weight + "kg BMI: " + bmi + " の推定身長は";
  document.getElementById('result_bmi3').innerHTML = height_text;
  document.getElementById("bmi_result_area3").style.visibility = "visible";

  $("html,body").animate({
    scrollTop: $('#bmi_result_area3').offset().top
  });
}

// NaCI -> Solt
function calc_sodium1() {

  var na = Number(document.form_sodium1.input_na.value);
  var ts = (na * 2.54 / 1000).toFixed(2);
  var ts_text;

  if (na <= 0) {
    ts_text = "入力値が無効です";
  } else {
    ts_text = ts + "g です。";

  }
  document.getElementById('result_sodium_input1').innerHTML = "ナトリウム: " + na + "mg の食塩相当量は";
  document.getElementById('result_sodium1').innerHTML = ts_text;
  document.getElementById("sodium_result_area1").style.visibility = "visible";

  $("html,body").animate({
    scrollTop: $('#sodium_result_area1').offset().top
  });
}

// Solt -> NaCI
function calc_sodium2() {

  var ts = Number(document.form_sodium2.input_ts.value);
  var na = (ts / 2.54 * 1000).toFixed(0);
  var na_text;

  if (ts <= 0) {
    na_text = "入力値が無効です";
  } else {
    na_text = na + "mg です。";

  }
  document.getElementById('result_sodium_input2').innerHTML = "食塩相当量: " + ts + "g のナトリウム量は";
  document.getElementById('result_sodium2').innerHTML = na_text;
  document.getElementById("sodium_result_area2").style.visibility = "visible";

  $("html,body").animate({
    scrollTop: $('#sodium_result_area2').offset().top
  });
}

// HbA1c -> eAG
function calc_eag1() {

  var hba1c = Number(document.form_eag1.input_hba1c.value);
  var eag1 = (hba1c * 28.7);
  var eag2 = (eag1 * 10) - 467;
  var eag = (eag2 / 10).toFixed(0);
  var eag_text;

  if (eag <= 0) {
    eag_text = "入力値が無効です";
  } else {
    eag_text = eag + "mg/dL です。";

  }
  document.getElementById('result_eag_input1').innerHTML = "HbA1c: " + hba1c + "% の推定平均血糖値(eAG)は";
  document.getElementById('result_eag1').innerHTML = eag_text;
  document.getElementById("eag_result_area1").style.visibility = "visible";

  $("html,body").animate({
    scrollTop: $('#eag_result_area1').offset().top
  });
}

// eAG -> HbA1c
function calc_eag2() {

  var ag = Number(document.form_eag2.input_ag.value);
  var hba1c = ((ag + 46.7) / 28.7).toFixed(1);
  var hba1c_text;

  if (ag <= 0) {
    hba1c_text = "入力値が無効です";
  } else {
    hba1c_text = hba1c + "% です。";

  }
  document.getElementById('result_eag_input2').innerHTML = "血糖値: " + ag + "(mg/dL) の推定HbA1cは";
  document.getElementById('result_eag2').innerHTML = hba1c_text;
  document.getElementById("eag_result_area2").style.visibility = "visible";

  $("html,body").animate({
    scrollTop: $('#eag_result_area2').offset().top
  });
}
