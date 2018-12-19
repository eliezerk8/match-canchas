class Estudiante < ApplicationRecord
  belongs_to :user
  belongs_to :carrera
  has_many :informes
end
