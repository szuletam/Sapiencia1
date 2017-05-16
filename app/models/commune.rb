class Commune < ApplicationRecord
  belongs_to :city
  has_many :neighborhoods
  has_many :users
end
