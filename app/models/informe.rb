class Informe < ApplicationRecord
  has_one :alertum
  belongs_to :estudiante
end
