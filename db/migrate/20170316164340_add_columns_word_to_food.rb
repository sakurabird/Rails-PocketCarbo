class AddColumnsWordToFood < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :search_word, :string, after: :name
    add_column :foods, :deleted_flg, :boolean, after: :kind_id
  end
end
