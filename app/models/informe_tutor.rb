class InformeTutor < ApplicationRecord
    validates :fecha, presence:true, uniqueness:true
    validates :objetivo, presence:true
    validates :observaciones, presence:true



end
