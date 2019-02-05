class ChangeColumnToType < ActiveRecord::Migration[5.2]
  def change
    change_column :types, :name, :string, null: false
  end
end
