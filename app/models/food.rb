class Food < ApplicationRecord
  belongs_to :type
  belongs_to :kind
end
