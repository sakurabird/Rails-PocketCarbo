module Api
  module V1
    class FoodsController < ApplicationController
      include Authentication

      before_action :authenticate

      def index
        @q = Food.ransack(:deleted_flg_eq => false) if !@q.present?
        @foods = @q.result
        render json: @foods
      end
    end
  end
end