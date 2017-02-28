class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :carbohydrate_per_100g
      t.float :carbohydrate_per_weight
      t.integer :weight
      t.float :calory
      t.float :protein
      t.float :fat
      t.float :sodium
      t.references :type, foreign_key: true
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
