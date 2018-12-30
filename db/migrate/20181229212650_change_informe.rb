class ChangeInforme < ActiveRecord::Migration[5.2]
  def change
    remove_column :alerta, :completado
    add_column :alerta, :estado, :boolean ,default: true
  end
end
