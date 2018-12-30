class Informe < ApplicationRecord
  has_one :alerta
  belongs_to :estudiante, optional:true

end
