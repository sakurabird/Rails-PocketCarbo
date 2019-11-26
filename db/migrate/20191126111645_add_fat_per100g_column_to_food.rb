class AddFatPer100gColumnToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :fat_per100g, :float, null: false
  end
end
