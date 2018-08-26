class FoodsController < ApplicationController

  # GET /foods
  # GET /foods.json
  def index
    @q = Food.ransack(:deleted_flg_eq => false) if !@q.present?
    @q.sorts = ['name asc'] if @q.sorts.empty?
    @foods = @q.result.page(params[:page])
  end

  def search
    @search_keyword = params[:search_keyword]
    @q = Food.with_keywords(@search_keyword).ransack(params[:q], :deleted_flg_eq => false)

    index
    render :index
  end

  def index_by_type_and_kind
    current_type
    current_kinds
    @search_keyword = nil
    @q = Food.ransack(:type_id_eq => @type_id,
                      :kind_id_eq => @kind_id,
                      :deleted_flg_eq => false)

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

  # 種類情報を取得する
  def current_kinds
    return if !@type_id.present?
    @kind_id = params[:kind_id] if params[:kind_id].present?
    @kind_id = '' if !@kind_id.present?
    kind = Kind.find_by(id: @kind_id)
    @kind_name = kind.name if kind.present?
    @kinds = Kind.where(type_id: @type_id)
  end
end
