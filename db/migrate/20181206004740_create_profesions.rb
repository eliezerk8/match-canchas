class CreateProfesions < ActiveRecord::Migration[5.2]
  def change
    create_table :profesions do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
