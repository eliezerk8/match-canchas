class ChangeBoolTables < ActiveRecord::Migration[5.2]
  def change
   
    remove_column :informes, :estado
    add_column :informes, :estado, :boolean ,default: true
    remove_column :carreras, :estado
    add_column :carreras, :estado, :boolean,default: true
    remove_column :rols, :estado
    add_column :rols, :estado, :boolean,default: true
    remove_column :facultads, :estado
    add_column :facultads, :estado, :boolean,default: true
  
  
  end
end
