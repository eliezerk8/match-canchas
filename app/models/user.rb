class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  has_and_belongs_to_many :estudiantes
  belongs_to :facultad, optional:true
  belongs_to :rol, optional:true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 
end