class Facultad < ApplicationRecord
    has_many :carreras
    has_many :users
    validates :nombrefacultad, :presence => true,length: {minimum:3,maximum: 50 }
end
