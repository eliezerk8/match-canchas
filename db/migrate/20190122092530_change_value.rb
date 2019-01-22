class ChangeValue < ActiveRecord::Migration[5.2]
  def change
    change_column :estudiantes, :user_id, :integer
  end
end
