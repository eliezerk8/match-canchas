class Estudiante < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :carrera
  has_many :informes
  validates :nombreestudiante, presence=> true, length: {minimum: 2,maximum: 40}
  validates :nem ,:presence=> true, numericality: {in:100..850}
  validates :situacioneconomica presence=> true
  validates :ranking, presence=> true, numericality: {in:100..850}
  validates :carrera_id, presence=> true
  validates :rut , presence=> true
  validates :telefono , presence=> true ,length:{is:8} numericality: {greater_than: 0}
  validates :email, presence=> true
  validates :apellidoma , presence=> true,length: {minimun: 2,maximum: 20}
  validates :apellidopa , presence=> true ,length: {minimum: 2,maximum: 20}
  
end
