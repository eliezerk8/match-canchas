class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :estudiantes
  belongs_to :facultad, optional:true
  belongs_to :rol, optional:true
   #Include default devise modules. Others available are:
   #:confirmable, :lockable, :timeoutable, :trackable and :omniauthable
     validates :apellidopa, :presence => true ,:length => {minimum: 2, maximum: 20}
     validates :apellidoma, :presence => true ,:length => {minimum: 2, maximum: 20}
     validates :telefono, :presence => true,numericality: { only_integer: true, greater_than: 0 }
     validates :fecha_nacimiento, :presence => true
     validates :encrypted_password, :presence => true
     validates :nombre, :presence => true,:length => {minimum: 2, maximum: 20}
     VALID_RUT_REGEX = /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i
     validates :rut, :presence => true,uniqueness:true, format: {with: VALID_RUT_REGEX}
     validate :mayor18
  def mayor18
    edad = Date.today.year - fecha_nacimiento.year
    if edad < 18 || fecha_nacimiento > Date.today
      errors.add(:fecha_nacimiento, "porque")
      end
    end
end