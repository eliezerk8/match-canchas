class Facultad < ApplicationRecord
  belongs_to :user
  has_many :carreras
  has_many :users
end
