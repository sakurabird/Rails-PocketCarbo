class ChangeColumnToFood < ActiveRecord::Migration[5.2]
  def change
    change_column :foods, :name, :string, null: false
    change_column :foods, :search_word, :string, null: false
    change_column :foods, :carbohydrate_per_100g, :float, null: false
    change_column :foods, :carbohydrate_per_weight, :float, null: false
    change_column :foods, :weight, :integer, null: false
    change_column :foods, :calory, :float, null: false
    change_column :foods, :protein, :float, null: false
    change_column :foods, :fat, :float, null: false
    change_column :foods, :sodium, :float, null: false
    change_column :foods, :type_id, :integer, null: false
    change_column :foods, :kind_id, :integer, null: false
    change_column :foods, :deleted_flg, :boolean, null: false
  end
end
