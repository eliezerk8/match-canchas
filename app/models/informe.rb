class Informe < ApplicationRecord
  has_one :alerta
  belongs_to :estudiante, optional:true
  validates :nota1,:nota2,:nota3 ,:nota4,:nota5,:nota6,:nota7,:nota8,:nota9,:nota10,:nota11,:nota12,:nota13,:nota14,:nota15,:observacion, :presence => true
end
