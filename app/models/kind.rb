class Kind < ApplicationRecord
  has_many :foods
  belongs_to :type

  validates :id, numericality: { only_integer: true, greater_than: 0 }
end
