class CreateProfesions < ActiveRecord::Migration[5.2]
  def change
    create_table :profesions do |t|
      t.text :Descripcion
      t.string :nombre

      t.timestamps
    end
  end
end
