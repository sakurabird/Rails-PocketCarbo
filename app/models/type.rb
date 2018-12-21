class Type < ApplicationRecord
  has_many :kinds
  has_many :foods

  validates :id, numericality: { only_integer: true, greater_than: 0 }
end
