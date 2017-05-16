class City < ApplicationRecord
  belongs_to :state
  has_many :communes
  has_many :users
end
