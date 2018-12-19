class User < ApplicationRecord
  has_one :estudiante
  has_one :rol
  belongs_to :facultad
  belongs_to :rol
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
