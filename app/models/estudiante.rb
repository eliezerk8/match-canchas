class Estudiante < ApplicationRecord
  has_one :carrera
  has_one :facultad
  has_many :informes
  belongs_to :user
  belongs_to :carrera
end
