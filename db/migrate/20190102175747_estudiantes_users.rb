class EstudiantesUsers < ActiveRecord::Migration[5.2]
  def change
  	create_table :estudiantes_users, id: false do |t|
  		t.belongs_to :estudiante, index:true
  		t.belongs_to :user, index:true
  	end	
  end
end
