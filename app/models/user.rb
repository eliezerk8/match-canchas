class User < ApplicationRecord
  has_one :rol
  has_one :facultad
  has_one :estudiante

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
