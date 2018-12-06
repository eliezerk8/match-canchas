class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.integer :rut
      t.string :nombre
      t.string :apellidopat
      t.string :apellidomat
      t.string :correo
      t.boolean :tutor
      t.string :carrera
      t.string :facultad

      t.timestamps
    end
  end
end
