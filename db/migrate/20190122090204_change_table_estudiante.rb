class ChangeTableEstudiante < ActiveRecord::Migration[5.2]
  def change
    rename_column :estudiantes, :users_id, :user_id
  end
end
