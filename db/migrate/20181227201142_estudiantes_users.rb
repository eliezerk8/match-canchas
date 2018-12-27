class EstudiantesUsers < ActiveRecord::Migration[5.2]
  def change
    drop_table :supervisars
    create_table :estudiantes_users do |t|
      t.references :estudiantes, index: true
      t.references :user, index: true
    end
  end
end

