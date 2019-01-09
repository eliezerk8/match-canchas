class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :estudiantes
  belongs_to :facultad, optional:true
  belongs_to :rol, optional:true
  
  validates :nombre, presence:  { message: 'Ingrese el Nombres '} , length: {in: 3..20, message:'El nombre debe ser de mínimo largo 3'}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los nombres"}
  validates :apellidopa, presence: { message: 'Ingrese el primer apellido'}, length: {in: 3..40, message:'El apellido debe ser de mínimo largo 3'}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los apellidos"}
   
  validates :apellidoma , presence: { message: 'Ingrese el segundo apellido'}, length: {in: 3..20, message:'El apellido debe ser de mínimo largo 3'}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los apellidos"}
  VALID_RUT_REGEX = /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i
  validates :rut , presence: { message: 'Ingrese un rut'}, uniqueness: true, format: {with: VALID_RUT_REGEX}
  validates :fecha_nacimiento , presence: {message: 'Ingrese la fecha de nacimiento'}
  validates :telefono, presence: {message: 'Ingrese celular'}, length: {is: 9, message:'Largo debe ser 9'}
  validate :fecha_de_nacimiento_debe_ser_en_pasado
  validate :edadminima


def fecha_de_nacimiento_debe_ser_en_pasado
    if fecha_nacimiento.present? && fecha_nacimiento >= Date.today
      errors.add(:fecha_nacimiento, "debe ser anterior a la fecha de hoy")
    end
end


  def edadminima
     if fecha_nacimiento.present? && fecha_nacimiento >= 18.year.ago
          errors.add(:fecha_nacimiento, "debe ser mayor de 18 años")
     end
  end

   





 
















end