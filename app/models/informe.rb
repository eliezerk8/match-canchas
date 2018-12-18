class Informe < ApplicationRecord
  has_one :estudiantes
  belongs_to :estudiante
  has_one :alertum
end
