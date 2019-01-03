class ChangeTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :informes, :nota1
    add_column :informes, :nota1, :float
    remove_column :alerta, :prioridad_id
    drop_table :prioridads
    add_column :alerta, :prioridad, :string

  end
end
