class Carrera < ApplicationRecord
  belongs_to :facultad
  has_many :estudiantes
  has_many :users
  validates :nombrecarrera, :codigo,:facultad_id, :presence => true
  validates :nombrecarrera, length: {minimum: 2, maximum: 50}
  validates :codigo, length: {is:5}, uniqueness: true,numericality: {greater_than: 0}

end
