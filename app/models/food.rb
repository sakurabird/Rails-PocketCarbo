class Food < ApplicationRecord
  belongs_to :type
  belongs_to :kind

  validates :id, numericality: { only_integer: true, greater_than: 0 }
  validates :carbohydrate_per_100g, numericality: { greater_than_or_equal_to: 0 }
  validates :carbohydrate_per_weight, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than_or_equal_to: 0 }
  validates :calory, numericality: { greater_than_or_equal_to: 0 }
  validates :protein, numericality: { greater_than_or_equal_to: 0 }
  validates :fat, numericality: { greater_than_or_equal_to: 0 }
  validates :sodium, numericality: { greater_than_or_equal_to: 0 }
end
