// JavaScript for static_pages/calc

function calc_bmi() {

  var weight = Number(document.form_bmi.input_weight.value);
  var height = Number(document.form_bmi.input_height.value);

  var bmi = Math.round(weight * 10000 / height / height * 10) / 10;
  var fine_weight = Math.round(height * height * 22 / 1000) / 10;

  var bmi_text;
  var category = "";

  if (isNaN(bmi)) {
    bmi_text = "入力値が無効です";
    fine_weight = "";
  } else {
    bmi_text = "ＢＭＩ: " + bmi + " (kg/m2)";


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

    fine_weight =　"理想体重：" + fine_weight + " (kg)";

  }
  document.getElementById('result_bmi_input').innerHTML = "身長: " + height + "cm 体重: " + weight + "kg のあなたのBMIは";
  document.getElementById('result_bmi').innerHTML = bmi_text;
  document.getElementById('result_bmi_category').innerHTML = category;
  document.getElementById('result_bmi_fine').innerHTML = fine_weight;

  $("html,body").animate({
    scrollTop: $('#result_area').offset().top
  });
}
