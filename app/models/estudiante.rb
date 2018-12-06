class Estudiante < ApplicationRecord
    validates :rut ,presence:true , length : { maximum : 8},length : { minimum : 7}
    validates :nombre , presence:true ,length : { maximum : 15}
    validates :apellidopat ,presence:true,length : { maximum : 15}
    VALID_EMAIL_REGEX = /\A[\w+\-,]+@[a-<\d\-.]+\[a-z]+\z/i
    validates :correo  ,presence true, format: { with:VALID_EMAIL:REGEX }
    validates :carrera,presence true
    validates :facultad,presence true
  end
  