class AddAttributesToEstudiante < ActiveRecord::Migration[5.2]
  def change
    add_column :estudiantes, :direccion, :string
    add_column :estudiantes, :comuna, :string
  end
end
