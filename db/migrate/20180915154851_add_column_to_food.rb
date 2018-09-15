class AddColumnToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :notes, :string
  end
end
