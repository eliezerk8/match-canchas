class CreateCarreras < ActiveRecord::Migration[5.2]
  def change
    create_table :carreras do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
