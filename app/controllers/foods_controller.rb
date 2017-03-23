class FoodsController < ApplicationController

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.ransack(:type_id_eq => @type_id, :name_cont => @search_keyword, :deleted_flg_eq => false).result.page(params[:page])
  end

  def search
    @search_keyword = params[:search_keyword]

    index
    render :index
  end

  def search_by_type
    current_type
    @search_keyword = nil

    index
    render :index
  end

private

  # タイプ情報を取得する
  def current_type
    @type_id = params[:type_id] if params[:type_id].present?
    @type_id = '' if !@type_id.present?
    type = Type.find_by(id: @type_id)
    @type_name = type.name if type.present?
  end
end
