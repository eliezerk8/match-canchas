class AddColumnsOnEstudiante < ActiveRecord::Migration[5.2]
  def change
    add_column :estudiantes, :fecha_nacimiento, :date
    add_column :estudiantes, :estado, :boolean,default: true
    add_column :estudiantes, :rut, :string
    add_column :estudiantes, :telefono, :string
    add_column :estudiantes, :email, :string
    add_column :estudiantes, :apellidopa, :string
    add_column :estudiantes, :apellidoma, :string



  end
end
