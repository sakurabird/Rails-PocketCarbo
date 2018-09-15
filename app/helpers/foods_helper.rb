module FoodsHelper

  # 糖質の量によって文字色を変更する
  def carbo_level_color_css(food)

    case food.carbohydrate_per_100g
      when 0 .. 5 then
        # 糖質量が少ない
        return "col-md-3 food_grid_left_safe"
      when 5 .. 15 then
        # 糖質量がやや多い
        return "col-md-3 food_grid_left_warning"
      when 15 .. 50 then
        # 糖質量が多い
        return "col-md-3 food_grid_left_danger"
      else
        # 糖質量が非常に多い
        return "col-md-3 food_grid_left_danger_high"
    end
  end

  def food_type
    if @type_name.present?
      link_to "#{@type_name}の糖質量", foods_search_t_path(:type_id => @type_id), class: "food_type font-weight-bold"
    end
  end

  def food_kind_title
    if @kind_name.present?
      html = <<-EOF
      <p class='food_kind_title'>#{@kind_name}</p>
      EOF
      html.html_safe
    else
      nil
    end
  end

  def ingredient_discription(food)
    weight_hint = food.weight_hint.blank? ? '' : "(#{food.weight_hint})"
    cube_string = cube_sugar(food.carbohydrate_per_weight)

    "一回分#{weight_hint}#{food.weight} g あたりの値　　　#{cube_string}"
    html = <<-EOF
      一回分#{weight_hint}#{food.weight} g あたりの値　#{cube_string}
      <br />
      <strong>糖質:</strong>#{food.carbohydrate_per_weight}g
      <strong>　カロリー:</strong>#{food.calory}kcal
      <strong>　たんぱく質:</strong>#{food.protein}g
      <strong>　脂質:</strong>#{food.fat}g
      <strong>　塩分:</strong>#{food.sodium}g
      EOF

    html.html_safe
  end

  def cube_sugar(carbohydrate)
    cube_num = (carbohydrate.to_f / 4).round(1)

    "角砂糖#{cube_num}個分"
  end

end
