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
      else
        # 糖質量が多い
        return "col-md-3 food_grid_left_danger"
    end
  end
end
