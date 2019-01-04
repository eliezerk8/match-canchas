class Carrera < ApplicationRecord
  belongs_to :facultad
  has_many :estudiantes
  validates :nombrecarrera, :codigo,:facultad_id, :presence => true
  validates :nombrecarrera, length: {minimum: 2, maximum: 30}
  validates :codigo, length: {is:5}, uniqueness: true,numericality: true

end
