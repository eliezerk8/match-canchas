class RemoveAddForeingKey3 < ActiveRecord::Migration[5.2]
  def change
    remove_column :informes, :estudianteid
    add_reference :informes, :estudiante, foreign_key:true
    remove_column :informes, :usuarioid
    add_reference :informes, :user, foreign_key:true
    remove_column :alerta, :prioridadid
    add_reference :alerta, :prioridad, foreign_key:true
    remove_column :alerta, :informeid
    add_reference :alerta, :informe, foreign_key:true

  end
end
