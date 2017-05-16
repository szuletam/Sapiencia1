class Neighborhood < ApplicationRecord
  belongs_to :commune
  has_many :users
end
