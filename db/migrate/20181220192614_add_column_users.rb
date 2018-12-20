class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    
    add_column :users, :fecha_nacimiento, :date
    add_column :users, :estado, :boolean,default: true
    add_column :users, :rut, :string
    add_column :users, :telefono, :string


  end
end
