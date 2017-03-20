class AddWeightHintToFood < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :weight_hint, :string, after: :weight
  end
end
