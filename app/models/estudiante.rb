class Estudiante < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :carrera
  has_many :informes
  validates :fecha_nacimiento, :presence => true
  validates :email, :presence => true
  validates :telefono, :presence => true
  validates :apellidoma, :presence => true,:length => {minimum: 2, maximum: 20}
  validates :apellidopa, :presence => true,:length => {minimum: 2, maximum: 20}
  validates :carrera_id, :presence => true
  validates :ranking, :presence => true
  validates :colegio, :presence => true,:length => {minimum: 2, maximum: 40}
  validates :situacioneconomica, :presence => true
  validates :nombreestudiante, :presence => true,:length => {minimum: 2, maximum: 30}
  validates :nem, :presence => true
  validates :rut, :presence => true,uniqueness:true, format: {with: VALID_RUT_REGEX}
  validate :mayor18
  def mayor18
    edad = Date.today.year - fecha_nacimiento.year
    if edad < 18 || fecha_nacimiento > Date.today
      errors.add(:fecha_nacimiento, "porque")
    end
  end
end


end
