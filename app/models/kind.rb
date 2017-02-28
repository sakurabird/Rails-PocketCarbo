class Kind < ApplicationRecord
  has_many :foods
  belongs_to :type
end
