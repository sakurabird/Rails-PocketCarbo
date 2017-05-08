module Api
  module V1
    class FoodsController < ApplicationController
      include Authentication

      before_action :authenticate

      def index
        foods=Food.select('id, name, carbohydrate_per_100g, carbohydrate_per_weight, weight,
                           weight_hint, calory, protein, fat, sodium,search_word,
                            type_id, kind_id')
                            .where(deleted_flg: false)
        hash = { :foods => foods }
        render :json => hash
      end

    end
  end
end