class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :estudiantes, :carrera_id, :integer
  end
end
