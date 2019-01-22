class ChangeTablesUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :carreras_id, :carrera_id
  end
end
