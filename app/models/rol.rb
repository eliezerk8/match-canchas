class Rol < ApplicationRecord
    has_many :users
    validates :descripcion, :uniqueness => true
end
