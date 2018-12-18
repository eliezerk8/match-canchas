class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :alerta, :informes, column: :informeid, primary_key: :id
    add_foreign_key :informes, :estudiantes, column: :estudianteid, primary_key: :id
    add_foreign_key :alerta, :prioridads, column: :prioridadid, primary_key: :id
    add_foreign_key :estudiantes, :carreras, column: :carrera_id, primary_key: :id
  end
end
