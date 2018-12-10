class AddChangeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellidopa, :string
    add_column :users, :apellidoma, :string
    add_column :users, :rol_id, :integer
    add_column :users, :telefono, :string
    add_column :users, :facultad_id, :integer
  end
end
