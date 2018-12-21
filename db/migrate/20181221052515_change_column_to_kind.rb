class ChangeColumnToKind < ActiveRecord::Migration[5.2]
  def change
    change_column :kinds, :name, :string, null: false
    change_column :kinds, :search_word, :string, null: false
    change_column :kinds, :type_id, :integer, null: false
  end
end
