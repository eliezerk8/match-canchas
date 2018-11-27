class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.integer :rut
      t.string :nombre
      t.string :apellido_pat
      t.string :apellido_mat
      t.string :correo
      t.boolean :tutor
      t.string :carrera

      t.timestamps
    end
  end
end
