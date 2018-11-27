class CreateProfesionals < ActiveRecord::Migration[5.2]
  def change
    create_table :profesionals do |t|
      t. :rut
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :tipo_profesional
      t.string :correo

      t.timestamps
    end
  end
end
