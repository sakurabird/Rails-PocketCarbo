require 'test_helper'

class FoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food = foods(:one)
  end

  test "should get index" do
    get foods_url
    assert_response :success
  end

  test "should get new" do
    get new_food_url
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post foods_url, params: { food: { calory: @food.calory, carbohydrate_per_100g: @food.carbohydrate_per_100g, carbohydrate_per_weight: @food.carbohydrate_per_weight, fat: @food.fat, kind_id: @food.kind_id, name: @food.name, protein: @food.protein, sodium: @food.sodium, type_id: @food.type_id, weight: @food.weight } }
    end

    assert_redirected_to food_url(Food.last)
  end

  test "should show food" do
    get food_url(@food)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_url(@food)
    assert_response :success
  end

  test "should update food" do
    patch food_url(@food), params: { food: { calory: @food.calory, carbohydrate_per_100g: @food.carbohydrate_per_100g, carbohydrate_per_weight: @food.carbohydrate_per_weight, fat: @food.fat, kind_id: @food.kind_id, name: @food.name, protein: @food.protein, sodium: @food.sodium, type_id: @food.type_id, weight: @food.weight } }
    assert_redirected_to food_url(@food)
  end

  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete food_url(@food)
    end

    assert_redirected_to foods_url
  end
end
