class FoodsController < ApplicationController

  # GET /foods
  # GET /foods.json
  def index
    @search_keyword = params[:search_keyword]
    @type_id = params[:type_id]
    logger.debug("========================type_id============================")
    logger.debug(@type_id)
    logger.debug("========================search_keyword============================")
    logger.debug(@search_keyword)
    if @type_id
      @foods = Food.ransack(:type_id_eq => @type_id, :name_cont => @search_keyword, :deleted_flg_eq => false).result.page(params[:page])
    else
      @foods = Food.ransack(:name_cont => @search_keyword, :deleted_flg_eq => false).result.page(params[:page])
    end

  end


  end


  end

  end

end
