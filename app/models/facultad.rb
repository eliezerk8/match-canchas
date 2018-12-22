class Facultad < ApplicationRecord
    has_many :carreras
    has_many :users
end
