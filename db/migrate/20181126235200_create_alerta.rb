class CreateAlerta < ActiveRecord::Migration[5.2]
  def change
    create_table :alerta do |t|
      t.boolean :completado
      t.integer :ID_informe
      t.integer :prioridad_ID
      t.date :fecha_recepcion

      t.timestamps
    end
  end
end
