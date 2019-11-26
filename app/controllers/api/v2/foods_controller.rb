module Api
  module V2
    class FoodsController < ApplicationController
      include Authentication

      before_action :authenticate

      def index
        data_version = Settings.foods.data_version
        kinds = Kind.select('id, name, search_word, type_id')
        foods = Food.select('id, name, carbohydrate_per_100g, carbohydrate_per_weight, weight,
                           weight_hint, calory, protein, fat, fat_per100g, sodium, search_word,
                            notes, type_id, kind_id')
                    .where(deleted_flg: false)
        hash = { :data_version => data_version, :kinds => kinds, :foods => foods }
        render :json => hash
      end

    end
  end
end
