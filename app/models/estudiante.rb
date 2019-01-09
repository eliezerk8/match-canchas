class Estudiante < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :carrera
  has_many :informes
  
end



