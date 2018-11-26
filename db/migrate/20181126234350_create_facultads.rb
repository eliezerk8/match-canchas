class CreateFacultads < ActiveRecord::Migration[5.2]
  def change
    create_table :facultads do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
