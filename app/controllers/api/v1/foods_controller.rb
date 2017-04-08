module Api
  module V1
    class FoodsController < ApplicationController
      include Authentication

      before_action :authenticate

      def index
        @q = Food.ransack(:deleted_flg_eq => false) if !@q.present?
        @foods = @q.result
        j = @foods.to_json(only: [
            :id,
            :name,
            :carbohydrate_per_100g,
            :carbohydrate_per_weight,
            :weight,
            :weight_hint,
            :calory,
            :protein,
            :fat,
            :sodium,
            :type_id,
            :kind_id])
        render json: j
      end
    end
  end
end