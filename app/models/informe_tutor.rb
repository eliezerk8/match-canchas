class InformeTutor < ApplicationRecord
   
    validates :objetivo, presence:true
    validates :observaciones, presence:true



end
