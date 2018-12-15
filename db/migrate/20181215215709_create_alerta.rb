class CreateAlerta < ActiveRecord::Migration[5.2]
  def change
    create_table :alerta do |t|
      t.boolean :completado
      t.integer :informeid
      t.integer :prioridadid
      t.date :fecharecepcion

      t.timestamps
    end
  end
end
