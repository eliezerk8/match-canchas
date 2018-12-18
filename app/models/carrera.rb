class Carrera < ApplicationRecord
  has_one :facultad
  has_many :estudiantes
  belongs_to :facultad
end
