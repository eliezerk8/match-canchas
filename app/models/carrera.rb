class Carrera < ApplicationRecord
  belongs_to :facultad
  has_many :estudiantes
end
