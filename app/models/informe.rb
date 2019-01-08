class Informe < ApplicationRecord
  has_one :alerta
  belongs_to :estudiante
  belongs_to :user
  validates :nota1,:nota2,:nota3 ,:nota4,:nota5,:nota6,:nota7,:nota8,:nota9,:nota10,:nota11,:nota12,:nota13,:nota14,:nota15,:observacion, :presence => true
  validates :observacion ,length: {minimum: 10,maximum: 2500}
end
