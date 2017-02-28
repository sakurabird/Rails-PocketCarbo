class Type < ApplicationRecord
  has_many :kinds
  has_many :foods
end
