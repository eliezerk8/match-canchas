class BoolColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :informes, :estado, :boolean
    add_column :carreras, :estado, :boolean
    add_column :rols, :estado, :boolean
    add_column :facultads, :estado, :boolean
  end
end
