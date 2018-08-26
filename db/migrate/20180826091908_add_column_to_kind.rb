class AddColumnToKind < ActiveRecord::Migration[5.2]
  def change
    add_column :kinds, :search_word, :string, :after => :name
    add_index :kinds, :search_word
  end
end
