class Profesional < ApplicationRecord
        validates :nombre , presence:true ,length : { maximum : 15}
        validates :apellidopat ,presence:true,length : { maximum : 15}
        validates :apellidomat ,presence:true,length : { maximum : 15}
        VALID_EMAIL_REGEX = /\A[\w+\-,]+@[a-<\d\-.]+\[a-z]+\z/i
        validates :correo  ,presence true, format: { with:VALID_EMAIL:REGEX }
       


end
