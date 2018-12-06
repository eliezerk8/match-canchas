class CreateProfesionals < ActiveRecord::Migration[5.2]
  def change
    create_table :profesionals do |t|
      t.string :nombre
      t.string :apellidopat
      t.string :apellidomat
      t.string :tipoprofesionid
      t.string :correo

      t.timestamps
    end
  end
end
